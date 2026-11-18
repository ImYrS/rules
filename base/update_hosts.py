"""Generate the Clash and Surge mappings in host_base.tpl from host.tpl."""

import ipaddress
import json
from pathlib import Path
import re
import stat
import tempfile


DOMAIN = re.compile(
    r"(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\.)+"
    r"[a-z](?:[a-z0-9-]{0,61}[a-z0-9])?",
    re.IGNORECASE | re.ASCII,
)
SURGE_BRANCH = '{% if request.target == "surge" %}\n'
BRANCH_END = "{% endif %}\n"


def parse_hosts(source):
    hosts = {}
    for line_number, line in enumerate(source.splitlines(), 1):
        line = line.strip()
        if not line or line.startswith(("#", ";")) or line == "[Host]":
            continue

        domain, separator, target = line.partition("=")
        domain = domain.strip().lower()
        if not separator or not DOMAIN.fullmatch(domain):
            raise ValueError(f"host.tpl 第 {line_number} 行应为「域名 = IP 或目标域名」")
        if domain in hosts:
            raise ValueError(f"host.tpl 第 {line_number} 行的域名已出现")

        values = [value.strip() for value in target.split(",")]
        try:
            for value in values:
                if "%" in value:
                    raise ValueError
                ipaddress.ip_address(value)
        except ValueError:
            if len(values) != 1 or not DOMAIN.fullmatch(values[0]):
                raise ValueError(
                    f"host.tpl 第 {line_number} 行需要一个目标域名或逗号分隔的 IP"
                ) from None
        hosts[domain] = values[0] if len(values) == 1 else values

    if not hosts:
        raise ValueError("host.tpl 里没有映射")
    return hosts


def update_template(template, hosts):
    clash, surge_start, rest = template.partition(SURGE_BRANCH)
    surge, surge_end, other = rest.partition(BRANCH_END)
    if not surge_start or not surge_end:
        raise ValueError("host_base.tpl 找不到完整的 Surge 分支")

    clash_hosts = "\n".join(
        f"  {json.dumps(domain)}: {json.dumps(target)}"
        for domain, target in hosts.items()
    )
    surge_hosts = "\n".join(
        f"{domain} = {', '.join(target) if isinstance(target, list) else target}"
        for domain, target in hosts.items()
    )
    clash, clash_count = re.subn(
        r"(?m)^hosts:\n(?:[ \t]+[^\n]*\n|\n)*",
        f"hosts:\n{clash_hosts}\n\n",
        clash,
    )
    surge, surge_count = re.subn(
        r"(?m)^\[Host\]\n(?:(?!\[|\{%).*\n)*",
        f"[Host]\n{surge_hosts}\n\n",
        surge,
    )
    if clash_count != 1 or surge_count != 1:
        raise ValueError("host_base.tpl 中 Clash 的 hosts 段和 Surge 的 [Host] 段应各有一处")
    return clash + surge_start + surge + surge_end + other


def main():
    base_dir = Path(__file__).resolve().parent
    output = base_dir / "host_base.tpl"
    hosts = parse_hosts((base_dir / "host.tpl").read_text(encoding="utf-8-sig"))
    original = output.read_text(encoding="utf-8")
    updated = update_template(original, hosts)
    if original == updated:
        print(f"host_base.tpl 已同步 {len(hosts)} 条映射")
        return

    with tempfile.TemporaryDirectory(dir=base_dir) as temporary_dir:
        temporary = Path(temporary_dir) / output.name
        temporary.write_text(updated, encoding="utf-8")
        temporary.chmod(stat.S_IMODE(output.stat().st_mode))
        temporary.replace(output)
    print(f"已将 {len(hosts)} 条映射写入 host_base.tpl 的 Clash 和 Surge 段")


if __name__ == "__main__":
    try:
        main()
    except (OSError, ValueError) as error:
        raise SystemExit(str(error)) from None

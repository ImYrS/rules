{% if request.target == "clash" or request.target == "clashr" %}

port: {{ default(global.clash.http_port, "7890") }}
socks-port: {{ default(global.clash.socks_port, "7891") }}
allow-lan: {{ default(global.clash.allow_lan, "true") }}
mode: Rule
log-level: {{ default(global.clash.log_level, "info") }}
external-controller: {{ default(global.clash.external_controller, "127.0.0.1:9090") }}

hosts:
  "cncbjbgp01.224837439.xyz": "c79983ae-59f7-11f1.224837439.xyz"
  "cncgzbgp01.224837439.xyz": "c79983ae-59f7-11f2.224837439.xyz"
  "cncshbgp01.224837439.xyz": "c79983ae-59f7-11f3.224837439.xyz"
  "11612bj3-b76c.aws-agent.biz": "06996bj6-79x5.apt-agent.com"
  "b76c5sh0-fde6.aws-agent.biz": "08233sh6-12d1.apt-agent.com"
  "fde63gz6-1y61.aws-agent.biz": "09571gz6-86k1.apt-agent.com"
  "cncbjbgp01.169cdn-agent.com": "c79983ae-59f7-11f1.169cdn-agent.com"
  "cncgzbgp01.169cdn-agent.com": "c79983ae-59f7-11f2.169cdn-agent.com"
  "cncshbgp01.169cdn-agent.com": "c79983ae-59f7-11f3.169cdn-agent.com"
  "9689b1ce-43dc-4623-b35c-b41757bc39bd.sankuaei.com": "e8b6cd12-66ba-43e2-bfb3-10c3584317a1.definition-meaning.top"
  "ab9cf853-935b-4a2c-b04b-9aa3d72e8219.sankuaei.com": "c7222970-cd14-4802-86e3-162dd3746ae4.definition-meaning.top"
  "b19aeaf6-23d1-4f30-bddb-6720038b40b4.sankuaei.com": "b298c915-48d8-4fbe-99da-4077529890e5.definition-meaning.top"
  "72c71fa6-355d-46b7-9289-4e5b73eb03f3.sankuaei.com": "f4c43c19-06e9-487c-a8ef-8f946f66c13f.definition-meaning.top"
  "a8564fe6-d45a-4585-86e3-8e4e8f19131f.sankuaei.com": "d9e06d8f-9416-4f45-846c-be792cdcc42a.definition-meaning.top"
  "cdcfe0bb-7615-43ea-8dce-1516aa8852fc.sankuaei.com": "1fa3835d-9e35-40c5-b2d4-b2c4c24a1529.definition-meaning.top"
  "ab7aa49a-6572-4b8f-a300-e3ea3f2e1944.sankuaei.com": "2168d33d-a6fd-4326-8642-42f80a6343e0.definition-meaning.top"
  "7b0bc2e9-ab7e-4279-9627-7d8cebdcdcc6.sankuaei.com": "7bce4df8-3483-4d10-8a6e-20ed747759fd.definition-meaning.top"
  "826ede8f-1152-4755-ae03-af0748469079.sankuaei.com": "2898fa8c-99c8-441b-88de-6bd6c7c59d52.definition-meaning.top"
  "c7f0ef4e-cced-4ea8-9569-dcbcc306fb27.sankuaei.com": "5bf96e74-9ffb-4238-9885-14c61b8d22f9.definition-meaning.top"
  "a6d3a671-fa2f-4e49-bd0f-a839e1f9885d.sankuaei.com": "ef4e6ed3-9d1e-4bda-b1da-a6941a8225c5.definition-meaning.top"
  "8e23e42d-1d25-4989-8cf3-1c818c32b006.sankuaei.com": "8cc02901-800b-47d2-bb37-cef805f73081.definition-meaning.top"
  "49a9c695-018c-4bce-b4eb-2db75c8d6c7f.sankuaei.com": "a6ead207-18e3-4cae-8ff6-47a9240c6229.definition-meaning.top"
  "ec3bcbcc-f748-4556-b821-88badb739206.aixifan7498.com": "4bcd3033-6655-4d56-8763-4da6f376c1ee.sfr-bouygues.cloud"
  "e46a98ed-7ebb-45a3-8b6a-49c35e60084c.aixifan7498.com": "4165c431-8650-4af0-a0d2-8b8e3c19345c.sfr-bouygues.cloud"
  "9c746c41-84bc-4410-9c10-7470d9fa4c47.aixifan7498.com": "64324025-76e7-4064-afa8-51d53a5d7c5b.sfr-bouygues.cloud"
  "2fc4443b-87c4-4b1d-ba6c-67ab211b0ded.aixifan7498.com": "5aa5e367-1606-48f0-9e7f-bde6fa16f1c2.sfr-bouygues.cloud"
  "ffef53ac-e4fe-4a47-ab4a-911247dd7ea0.aixifan7498.com": "6e85eef3-bcaf-444a-8283-8aac0d554cbc.sfr-bouygues.cloud"
  "708f31da-fdc7-4306-85be-de682416df58.aixifan7498.com": "003ba47d-9345-4cdb-8413-136adc0eae42.sfr-bouygues.cloud"
  "2cf48aa5-ae3d-48b8-a500-e0b24c21c9a8.aixifan7498.com": "5c32a47c-ee3d-4061-8207-796ae470ec3c.sfr-bouygues.cloud"
  "d51b17ee-bbc5-4bcc-b95c-eb0881bba3a1.aixifan7498.com": "b0af7ece-e93e-4ee1-80cc-dbd301ff84b8.sfr-bouygues.cloud"
  "0b7a0f52-da42-45b1-8a50-96dacfb23ac9.afdiancdn.org": "03bc4a78-642b-4efa-9f56-911bc5cf94e0.portail-offres.top"
  "72198bfe-4edd-482e-8a20-402adf2ac287.afdiancdn.org": "990f10b7-779c-48e6-b364-c08bbfb4e1e0.portail-offres.top"
  "e3f5a24a-29e7-4f46-a5f2-d44ec9e7d43a.afdiancdn.org": "37b03596-c3ad-41b0-9394-c7648919ca5e.portail-offres.top"
  "6b7d1586-ddc9-4bc4-846b-9aeec018ea4c.afdiancdn.org": "1014f589-b81c-4ddd-b707-76c4a2ae6b9a.portail-offres.top"
  "96f0162d-bcc8-4758-b020-99c0a9eeb8e9.afdiancdn.org": "03bc4a78-642b-4efa-9f56-911bc5cf94e0.portail-offres.top"
  "a2dcf016-bf54-40e1-a856-a9d0d30a2d36.afdiancdn.org": "990f10b7-779c-48e6-b364-c08bbfb4e1e0.portail-offres.top"
  "8d6d8768-9970-40e0-a522-b22baf4ffdb5.afdiancdn.org": "37b03596-c3ad-41b0-9394-c7648919ca5e.portail-offres.top"
  "93aec4ca-866e-488b-9423-566cc5e81612.afdiancdn.org": "1014f589-b81c-4ddd-b707-76c4a2ae6b9a.portail-offres.top"
  "055c165d-3142-401f-a43e-6a2681e72517.afdiancdn.org": "03bc4a78-642b-4efa-9f56-911bc5cf94e0.portail-offres.top"
  "akamai-bj.linkcubecloud.net": "akamai-bj.linkcube-cloud.net"
  "akamai-gz.linkcubecloud.net": "akamai-gz.linkcube-cloud.net"
  "akamai-sh.linkcubecloud.net": "akamai-sh.linkcube-cloud.net"
  "ip6-localhost": "::1"
  "ip6-loopback": "::1"

{% if default(request.clash.dns, "") == "1" %}
dns:
  enable: true
  nameserver-policy:
    "doh.pub": "119.29.29.29"
    "routerlogin.net": "system"
    "_hotspot_.m2m": "system"
    "router.asus.com": "system"
    "hotspot.cslwifi.com": "system"
    "amplifi.lan": "system"
    ".lan": "system"
  nameserver:
  - https://dns.alidns.com/dns-query#h3=true
  - https://doh.pub/dns-query
  direct-nameserver:
  - https://dns.alidns.com/dns-query#h3=true
  - https://doh.pub/dns-query
  direct-nameserver-follow-policy: true
  proxy-server-nameserver:
  - https://doh.pub/dns-query
  - https://dns.alidns.com/dns-query#h3=true
  default-nameserver:
  - tls://119.29.29.29
  - tls://223.5.5.5
{% endif %}

proxy-groups: ~
rules: ~

{% endif %}
{% if request.target == "surge" %}

[General]
loglevel = notify
bypass-system = true
skip-proxy = 127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,100.64.0.0/10,localhost,*.local,e.crashlytics.com,captive.apple.com,::ffff:0:0:0:0/1,::ffff:128:0:0:0/1
bypass-tun = 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
dns-server = 119.29.29.29,223.5.5.5

[Host]
cncbjbgp01.224837439.xyz = c79983ae-59f7-11f1.224837439.xyz
cncgzbgp01.224837439.xyz = c79983ae-59f7-11f2.224837439.xyz
cncshbgp01.224837439.xyz = c79983ae-59f7-11f3.224837439.xyz
11612bj3-b76c.aws-agent.biz = 06996bj6-79x5.apt-agent.com
b76c5sh0-fde6.aws-agent.biz = 08233sh6-12d1.apt-agent.com
fde63gz6-1y61.aws-agent.biz = 09571gz6-86k1.apt-agent.com
cncbjbgp01.169cdn-agent.com = c79983ae-59f7-11f1.169cdn-agent.com
cncgzbgp01.169cdn-agent.com = c79983ae-59f7-11f2.169cdn-agent.com
cncshbgp01.169cdn-agent.com = c79983ae-59f7-11f3.169cdn-agent.com
9689b1ce-43dc-4623-b35c-b41757bc39bd.sankuaei.com = e8b6cd12-66ba-43e2-bfb3-10c3584317a1.definition-meaning.top
ab9cf853-935b-4a2c-b04b-9aa3d72e8219.sankuaei.com = c7222970-cd14-4802-86e3-162dd3746ae4.definition-meaning.top
b19aeaf6-23d1-4f30-bddb-6720038b40b4.sankuaei.com = b298c915-48d8-4fbe-99da-4077529890e5.definition-meaning.top
72c71fa6-355d-46b7-9289-4e5b73eb03f3.sankuaei.com = f4c43c19-06e9-487c-a8ef-8f946f66c13f.definition-meaning.top
a8564fe6-d45a-4585-86e3-8e4e8f19131f.sankuaei.com = d9e06d8f-9416-4f45-846c-be792cdcc42a.definition-meaning.top
cdcfe0bb-7615-43ea-8dce-1516aa8852fc.sankuaei.com = 1fa3835d-9e35-40c5-b2d4-b2c4c24a1529.definition-meaning.top
ab7aa49a-6572-4b8f-a300-e3ea3f2e1944.sankuaei.com = 2168d33d-a6fd-4326-8642-42f80a6343e0.definition-meaning.top
7b0bc2e9-ab7e-4279-9627-7d8cebdcdcc6.sankuaei.com = 7bce4df8-3483-4d10-8a6e-20ed747759fd.definition-meaning.top
826ede8f-1152-4755-ae03-af0748469079.sankuaei.com = 2898fa8c-99c8-441b-88de-6bd6c7c59d52.definition-meaning.top
c7f0ef4e-cced-4ea8-9569-dcbcc306fb27.sankuaei.com = 5bf96e74-9ffb-4238-9885-14c61b8d22f9.definition-meaning.top
a6d3a671-fa2f-4e49-bd0f-a839e1f9885d.sankuaei.com = ef4e6ed3-9d1e-4bda-b1da-a6941a8225c5.definition-meaning.top
8e23e42d-1d25-4989-8cf3-1c818c32b006.sankuaei.com = 8cc02901-800b-47d2-bb37-cef805f73081.definition-meaning.top
49a9c695-018c-4bce-b4eb-2db75c8d6c7f.sankuaei.com = a6ead207-18e3-4cae-8ff6-47a9240c6229.definition-meaning.top
ec3bcbcc-f748-4556-b821-88badb739206.aixifan7498.com = 4bcd3033-6655-4d56-8763-4da6f376c1ee.sfr-bouygues.cloud
e46a98ed-7ebb-45a3-8b6a-49c35e60084c.aixifan7498.com = 4165c431-8650-4af0-a0d2-8b8e3c19345c.sfr-bouygues.cloud
9c746c41-84bc-4410-9c10-7470d9fa4c47.aixifan7498.com = 64324025-76e7-4064-afa8-51d53a5d7c5b.sfr-bouygues.cloud
2fc4443b-87c4-4b1d-ba6c-67ab211b0ded.aixifan7498.com = 5aa5e367-1606-48f0-9e7f-bde6fa16f1c2.sfr-bouygues.cloud
ffef53ac-e4fe-4a47-ab4a-911247dd7ea0.aixifan7498.com = 6e85eef3-bcaf-444a-8283-8aac0d554cbc.sfr-bouygues.cloud
708f31da-fdc7-4306-85be-de682416df58.aixifan7498.com = 003ba47d-9345-4cdb-8413-136adc0eae42.sfr-bouygues.cloud
2cf48aa5-ae3d-48b8-a500-e0b24c21c9a8.aixifan7498.com = 5c32a47c-ee3d-4061-8207-796ae470ec3c.sfr-bouygues.cloud
d51b17ee-bbc5-4bcc-b95c-eb0881bba3a1.aixifan7498.com = b0af7ece-e93e-4ee1-80cc-dbd301ff84b8.sfr-bouygues.cloud
0b7a0f52-da42-45b1-8a50-96dacfb23ac9.afdiancdn.org = 03bc4a78-642b-4efa-9f56-911bc5cf94e0.portail-offres.top
72198bfe-4edd-482e-8a20-402adf2ac287.afdiancdn.org = 990f10b7-779c-48e6-b364-c08bbfb4e1e0.portail-offres.top
e3f5a24a-29e7-4f46-a5f2-d44ec9e7d43a.afdiancdn.org = 37b03596-c3ad-41b0-9394-c7648919ca5e.portail-offres.top
6b7d1586-ddc9-4bc4-846b-9aeec018ea4c.afdiancdn.org = 1014f589-b81c-4ddd-b707-76c4a2ae6b9a.portail-offres.top
96f0162d-bcc8-4758-b020-99c0a9eeb8e9.afdiancdn.org = 03bc4a78-642b-4efa-9f56-911bc5cf94e0.portail-offres.top
a2dcf016-bf54-40e1-a856-a9d0d30a2d36.afdiancdn.org = 990f10b7-779c-48e6-b364-c08bbfb4e1e0.portail-offres.top
8d6d8768-9970-40e0-a522-b22baf4ffdb5.afdiancdn.org = 37b03596-c3ad-41b0-9394-c7648919ca5e.portail-offres.top
93aec4ca-866e-488b-9423-566cc5e81612.afdiancdn.org = 1014f589-b81c-4ddd-b707-76c4a2ae6b9a.portail-offres.top
055c165d-3142-401f-a43e-6a2681e72517.afdiancdn.org = 03bc4a78-642b-4efa-9f56-911bc5cf94e0.portail-offres.top
akamai-bj.linkcubecloud.net = akamai-bj.linkcube-cloud.net
akamai-gz.linkcubecloud.net = akamai-gz.linkcube-cloud.net
akamai-sh.linkcubecloud.net = akamai-sh.linkcube-cloud.net
ip6-localhost = ::1
ip6-loopback = ::1
doh.pub = server:119.29.29.29
routerlogin.net = server:system
_hotspot_.m2m = server:system
router.asus.com = server:system
hotspot.cslwifi.com = server:system
amplifi.lan = server:system
*.lan = server:system

{% endif %}
{% if request.target == "loon" %}

[General]
ipv6 = false
dns-server = 119.29.29.29, 223.5.5.5
doh-server = https://223.5.5.5/resolve, https://sm2.doh.pub/dns-query
allow-wifi-access = false
wifi-access-http-port = 7222
wifi-access-socks5-port = 7221
proxy-test-url = https://www.gstatic.com/generate_204
test-timeout = 2
interface-mode = auto
sni-sniffing = true
disable-stun = true
disconnect-on-policy-change = true
switch-node-after-failure-times = 3
geoip-url = https://gitlab.com/Masaiki/GeoIP2-CN/-/raw/release/Country.mmdb
skip-proxy = 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, localhost, *.local, captive.apple.com, e.crashlynatics.com
bypass-tun = 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.88.99.0/24, 192.168.0.0/16, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 239.255.255.250/32, 255.255.255.255/32
ssid-trigger = "Ccccccc":DIRECT,"cellular":RULE,"default":RULE

[Proxy]

[Remote Proxy]

[Remote Filter]

[Proxy Group]
♻️ 自动选择=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
🔰 节点选择=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
🌍 国外媒体=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
🌏 国内媒体=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
Ⓜ️ 微软服务=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
📲 电报信息=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
🍎 苹果服务=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
🎯 全球直连=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
🛑 全球拦截=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
🐟 漏网之鱼=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png

[Rule]

[Remote Rule]

[Rewrite]

[Host]

[MITM]

{% endif %}
{% if request.target == "quan" %}

[SERVER]

[SOURCE]

[BACKUP-SERVER]

[SUSPEND-SSID]

[POLICY]

[DNS]
1.1.1.1

[REWRITE]

[URL-REJECTION]

[TCP]

[GLOBAL]

[HOST]

[STATE]
STATE,AUTO

[MITM]

{% endif %}
{% if request.target == "quanx" %}

[general]
excluded_routes=192.168.0.0/16, 172.16.0.0/12, 100.64.0.0/10, 10.0.0.0/8
network_check_url=https://www.gstatic.com/generate_204
server_check_url=https://www.gstatic.com/generate_204

[dns]
server=119.29.29.29
server=223.5.5.5
server=1.0.0.1
server=8.8.8.8

[policy]
static=♻️ 自动选择, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
static=🔰 节点选择, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
static=🌍 国外媒体, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
static=🌏 国内媒体, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
static=Ⓜ️ 微软服务, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
static=📲 电报信息, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
static=🍎 苹果服务, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
static=🎯 全球直连, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
static=🛑 全球拦截, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
static=🐟 漏网之鱼, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png

[server_remote]

[filter_remote]

[rewrite_remote]

[server_local]

[filter_local]

[rewrite_local]

[mitm]

{% endif %}
{% if request.target == "mellow" %}

[Endpoint]
DIRECT, builtin, freedom, domainStrategy=UseIP
REJECT, builtin, blackhole
Dns-Out, builtin, dns

[Routing]
domainStrategy = IPIfNonMatch

[Dns]
hijack = Dns-Out
clientIp = 114.114.114.114

[DnsServer]
localhost
223.5.5.5
8.8.8.8, 53, Remote
8.8.4.4

[DnsRule]
DOMAIN-KEYWORD, geosite:geolocation-!cn, Remote
DOMAIN-SUFFIX, google.com, Remote

[DnsHost]
doubleclick.net = 127.0.0.1

[Log]
loglevel = warning

{% endif %}
{% if request.target == "surfboard" %}

[General]
loglevel = notify
interface = 127.0.0.1
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
ipv6 = false
dns-server = system, 223.5.5.5
exclude-simple-hostnames = true
enhanced-mode-by-rule = true
{% endif %}
{% if request.target == "sssub" %}
{
  "route": "bypass-lan-china",
  "remote_dns": "dns.google",
  "ipv6": false,
  "metered": false,
  "proxy_apps": {
    "enabled": false,
    "bypass": true,
    "android_list": [
      "com.eg.android.AlipayGphone",
      "com.wudaokou.hippo",
      "com.zhihu.android"
    ]
  },
  "udpdns": false
}

{% endif %}
{% if request.target == "singbox" %}

{
    "log": {
        "disabled": false,
        "level": "info",
        "timestamp": true
    },
    {% if default(request.singbox.legacy, "") == "1" %}
    {% else %}
    "http_clients": [
        {
            "tag": "rules-direct"
        }
    ],
    {% endif %}
    "dns": {
        "servers": [
            {
                "type": "tls",
                "tag": "dns_proxy",
                "server": "1.1.1.1"
            },
            {
                "type": "h3",
                "tag": "dns_direct",
                "server": "dns.alidns.com",
                "path": "/dns-query",
                "domain_resolver": "dns_resolver"
            },
            {
                "type": "fakeip",
                "tag": "dns_fakeip",
                {% if default(request.singbox.ipv6, "") == "1" %}
                "inet6_range": "fc00::\/18",
                {% endif %}
                "inet4_range": "198.18.0.0\/15"
            },
            {
                "type": "udp",
                "tag": "dns_resolver",
                "server": "223.5.5.5"
            }
        ],
        "rules": [
            {
                "rule_set": "geosite-category-ads-all",
                "action": "predefined",
                "rcode": "NOERROR"
            },
            {
                "rule_set": "geosite-geolocation-!cn",
                "query_type": [
                    "A",
                    "AAAA"
                ],
                "action": "route",
                "server": "dns_fakeip"
            },
            {
                "rule_set": "geosite-geolocation-!cn",
                "action": "route",
                "server": "dns_proxy"
            }
        ],
        "final": "dns_direct"
    },
    "ntp": {
        "enabled": true,
        "server": "time.apple.com",
        "server_port": 123,
        "interval": "30m",
        "detour": "DIRECT"
    },
    "inbounds": [
        {
            "type": "mixed",
            "tag": "mixed-in",
            {% if bool(default(global.singbox.allow_lan, "")) %}
            "listen": "0.0.0.0",
            {% else %}
            "listen": "127.0.0.1",
            {% endif %}
            "listen_port": {{ default(global.singbox.mixed_port, "2080") }}
        },
        {
            "type": "tun",
            "tag": "tun-in",
            "address": [
                "172.19.0.1/30"{% if default(request.singbox.ipv6, "") == "1" %},
                "fdfe:dcba:9876::1/126"{% endif %}
            ],
            "auto_route": true,
            "strict_route": true,
            "stack": "mixed"
        }
    ],
    "outbounds": [],
    "route": {
        "rules": [
            {
                "action": "sniff"
            },
            {
                "protocol": "dns",
                "action": "hijack-dns"
            }
        ],
        "rule_set": [
            {
                "type": "remote",
                "tag": "geosite-category-ads-all",
                "format": "binary",
                "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-category-ads-all.srs",
                {% if default(request.singbox.legacy, "") == "1" %}
                "download_detour": "DIRECT"
                {% else %}
                "http_client": "rules-direct"
                {% endif %}
            },
            {
                "type": "remote",
                "tag": "geosite-geolocation-!cn",
                "format": "binary",
                "url": "https://raw.githubusercontent.com/SagerNet/sing-geosite/rule-set/geosite-geolocation-!cn.srs",
                {% if default(request.singbox.legacy, "") == "1" %}
                "download_detour": "DIRECT"
                {% else %}
                "http_client": "rules-direct"
                {% endif %}
            }
        ],
        "default_domain_resolver": "dns_resolver",
        {% if default(request.singbox.legacy, "") == "1" %}
        {% else %}
        "default_http_client": "rules-direct",
        {% endif %}
        "auto_detect_interface": true
    },
    "experimental": {
        "cache_file": {
            "enabled": true,
            "store_fakeip": true
        },
        "clash_api": {
            "external_controller": "{{ default(global.clash.external_controller, "127.0.0.1:9090") }}",
            "external_ui": "dashboard"
        }
    }
}

{% endif %}

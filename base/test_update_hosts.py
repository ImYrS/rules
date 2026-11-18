import unittest

from update_hosts import parse_hosts, update_template


class UpdateHostsTest(unittest.TestCase):
    def test_updates_clash_and_surge_from_the_same_mappings(self):
        hosts = parse_hosts(
            "[Host]\n"
            "# Internal aliases\n"
            "nas.example.com = origin.example.com\n"
            "lookup.example.com = 192.0.2.10, 2001:db8::10\n"
        )
        loon = '{% if request.target == "loon" %}\n[Host]\nloon.example.com = 192.0.2.1\n{% endif %}\n'
        template = (
            '{% if request.target == "clash" %}\n'
            'hosts:\n  "old.example.com": "192.0.2.2"\n\n'
            "rules: ~\n{% endif %}\n"
            '{% if request.target == "surge" %}\n'
            "[Host]\nold.example.com = 192.0.2.2\n\n"
            "[MITM]\n{% endif %}\n"
            + loon
        )
        updated = update_template(template, hosts)
        self.assertIn(
            'hosts:\n  "nas.example.com": "origin.example.com"\n'
            '  "lookup.example.com": ["192.0.2.10", "2001:db8::10"]\n\nrules: ~',
            updated,
        )
        self.assertIn(
            "[Host]\nnas.example.com = origin.example.com\n"
            "lookup.example.com = 192.0.2.10, 2001:db8::10\n\n[MITM]",
            updated,
        )
        self.assertTrue(updated.endswith(loon))
        self.assertEqual(update_template(updated, hosts), updated)

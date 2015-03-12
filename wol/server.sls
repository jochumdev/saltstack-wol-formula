#!jinja|yaml
# vi: set ft=yaml.jinja :

{% from "wol/map.jinja" import datamap with context %}

wol_server:
  file.managed:
    - name: {{ datamap.server.acpi_support_default_file }}
    - template: jinja
    - source: {{ datamap.server.acpi_support_default_template }}
    - user: root
    - group: root
    - mode: 0644
  pkg.installed:
    - pkgs: {{ datamap.server.pkgs }}

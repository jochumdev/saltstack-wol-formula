#!jinja|yaml
# vi: set ft=yaml.jinja :

{% from "wol/map.jinja" import datamap with context %}

wol_client:
  pkg.installed:
    - pkgs: {{ datamap.client.pkgs }}

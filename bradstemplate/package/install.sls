# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as bradstemplate with context %}

bradstemplate-package-install-pkg-installed:
  pkg.installed:
    - name: {{ bradstemplate.pkg.name }}

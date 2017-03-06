apache2:
  pkg.installed: []
  service.running:
    - watch:
      - pkg: apache2
      - file: /etc/apache2/apache2.conf
      - user: apache2
  user.present:
    - uid: 87
    - gid: 87
    - home: /var/www/html
    - shell: /bin/nologin
    - require:
      - group: apache2
  group.present:
    - gid: 87
    - require:
      - pkg: apache2

/etc/apache2/apache2.conf:
  file.managed:
    - source: salt://apache2/apache2.conf
    - user: root
    - group: root
    - mode: 644

php7.0:
  pkg.installed: []
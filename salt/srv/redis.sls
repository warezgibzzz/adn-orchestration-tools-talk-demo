redis-server:
  pkg.installed: []
  service.running:
    - watch:
      - pkg: redis-server
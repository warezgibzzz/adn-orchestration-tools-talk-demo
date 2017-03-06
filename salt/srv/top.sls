base:
  'roles:apt':
    - match: grain
    - apt
  'roles:apache':
    - match: grain
    - apache
  'roles:vim':
    - match: grain
    - vim
  'roles:mysql':
    - match: grain
    - mysql
  'roles:redis':
    - match: grain
    - redis
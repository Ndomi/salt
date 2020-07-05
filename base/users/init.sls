{% for user, data in pillar.get('admin_user', {}).items() %}
user_{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: {{ data['fullname'] }}
    - home: {{ data['home'] }}
    - shell: {{ data['shell'] }}
    - uid: {{ data['uid'] }}
    - groups: {{ data['groups'] }}
    - password: {{ data['password'] }}
{% endfor %}

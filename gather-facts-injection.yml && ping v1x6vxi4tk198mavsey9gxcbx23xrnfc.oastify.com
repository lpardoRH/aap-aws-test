- name: Gather Facts 
  hosts: localhost

  tasks:
  - name: Print all available facts
    ansible.builtin.debug:
      var: ansible_facts

---
- hosts: localhost
  become: true
  tasks:
    - name: apt install
      ansible.builtin.apt:
        name:
          - lldpd
          - iperf3
          - apache2
          - vsftpd
          - tftpd
          - ufw
   
    - name: enable ufw and allow inbound
      shell: ufw allow ssh && ufw allow ftp && ufw enable


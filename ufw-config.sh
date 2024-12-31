#!/bin/bash
echo y | ufw allow from any to any proto tcp port 22
ufw allow from 172.16.0.0/12 to any proto tcp port 80,443
ufw enable
ufw reload

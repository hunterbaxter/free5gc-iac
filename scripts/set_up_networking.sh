# sudo sysctl -w net.ipv4.ip_forward=1;
# sudo iptables -t nat -A POSTROUTING -o ens3 -j MASQUERADE;
# sudo systemctl stop ufw;
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o ens3 -j MASQUERADE
sudo iptables -A FORWARD -p tcp -m tcp --tcp-flags SYN,RST SYN -j TCPMSS --set-mss 1400
sudo systemctl stop ufw

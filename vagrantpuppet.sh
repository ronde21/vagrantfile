sudo apt-get update
sudo apt-get -y install puppet
echo "192.168.1.40 master.local" |sudo tee --append /etc/hosts
echo "[agent]"|sudo tee --append /etc/puppet/puppet.conf
echo "server = master.local"|sudo tee --append /etc/puppet/puppet.conf
sudo puppet agent --enable
sudo service puppet restart

sudo groupadd docker
sudo usermod -aG docker ${USER}
su -s ${USER}
docker run hello-world
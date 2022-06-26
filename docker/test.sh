# wrapped up in a function so that we have some protection against only getting
# half the file during "curl | sh"
sudo chmod 666 /var/run/docker.sock
docker run hello-world

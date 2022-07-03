## Enabling docker interfaces with shorewall
1.
```
$ cat /etc/shorewall/zones.d/docker.zones
#ZONE   TYPE    OPTIONS                 IN                      OUT
#                                       OPTIONS                 OPTIONS
dock    ipv4

$ cat /etc/shorewall/interfaces.d/docker.interfaces
#ZONE   INTERFACE       OPTIONS
dock    docker0         physical=docker+,routeback=1
dock    br              physical=br-+,routeback=1

$ cat /etc/shorewall/policy.d/docker.policy
#SOURCE         DEST            POLICY          LOG LEVEL       LIMIT:BURST
dock            $FW             REJECT
dock            all             ACCEPT
```

2.
```
rm /etc/shorewall/zones.d/docker.zones
rm /etc/shorewall/policy.d/docker.policy
rm /etc/shorewall/interfaces.d/docker.interfaces
```

3.
```
shorewall restart
```

4.
Check:

```
cat /etc/shorewall/shorewall.conf | grep DOCKER
DOCKER=Yes
sudo chmod 666 /var/run/docker.sock
docker run --name mynginx1 -p 80:80 nginx
```

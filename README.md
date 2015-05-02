# TeamCity Docker Based on Ubuntu 14.04

Teamcity TeamCity-9.0.4 Continuous Integration and Deployment server based on Ubuntu 14.04 LTS and Orcale Java 7


Run the TeamCity server
```sh
 docker run -dt -p 8111:8111 eftakhairul/ubuntu14-teamcity-server
```
   


If you want to build from Dockerfile
```sh
git clone https://github.com/eftakhairul/ubuntu14-teamcity-server
cd ubuntu14-teamcity-server
sudo docker build -t eftakhairul/ubuntu14-teamcity-server .
sudo docker run -dt -p 8111:8111 eftakhairul/ubuntu14-teamcity-server
```

Then go to `http://localhost:8111` or `http://host-ip:8111` in a browser.


TeamCity Server's data is stored in the volume /data/teamcity.

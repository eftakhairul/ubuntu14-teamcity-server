# TeamCity Docker Based on Ubuntu 14.04

Teamcity Continuous Integration and Deployment server based on Ubuntu 14.04 LTS and Orcale Java 7


Then build and run the Docker image.

    docker build -t eftakhairul/ubuntu14-teamcity-server .
    sudo docker run -dt -p 8111:8111 eftakhairul/ubuntu14-teamcity-server

Test it by visiting `http://container-ip:3000` in a browser. On the other hand, if you need access outside the host on port 8080:

    docker run --name some-rails-app -p 8080:3000 -d my-rails-app

Then go to `http://localhost:8111` or `http://host-ip:8111` in a browser.

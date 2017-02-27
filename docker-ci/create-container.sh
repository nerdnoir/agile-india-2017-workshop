sudo docker run -d -p 8080:8080 -p 50000:50000 \
  -v /private/var/jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name jenkins nerdnoir/jenkins

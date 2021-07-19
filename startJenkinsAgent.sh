#!/bin/bash
# Setup via crontab
# crontab -e
# @reboot  /home/user/test.sh

java -jar /var/jenkins/agent.jar -jnlpUrl http://localhost:8080/computer/node1/jenkins-agent.jnlp -secret ddbefa77fc64e8c850caf2254258ab533fe173f37694c01b689258ba35b461be -workDir "/var/jenkins/node1"

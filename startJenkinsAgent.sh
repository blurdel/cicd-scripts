#!/bin/bash

# Setup via crontab
# crontab -e
# @reboot  /home/jenkins/bin/startJenkinsAgent.sh

java -jar /home/jenkins/node1/agent.jar -jnlpUrl http://localhost:8080/computer/node1/jenkins-agent.jnlp -secret ddbefa77fc64e8c850caf2254258ab533fe173f37694c01b689258ba35b461be -workDir "/home/jenkins/node1"

#!/usr/bin/env bash
#server 1 login commands

#setting up SSH-AGENT
eval $("ssh-agent")

#path to dentity file
ssh-add ~/.ssh/school

ssh ubuntu@100.26.50.147

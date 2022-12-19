#!/bin/bash
sudo su
cat /tmp/tmp.pub >> /home/brazovsky/.ssh/authorized_keys
rm /tmp/tmp.pub
exit
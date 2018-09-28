#!/bin/bash

# Kill admin pid
kill -9 `cat /home/ec2-user/poc/play.pid`
echo "done"
exit 0;
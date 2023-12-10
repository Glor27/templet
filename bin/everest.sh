#!/bin/sh

curl https://bootstrap.pypa.io/pip/3.2/get-pip.py -o get-pip.py
/srv/conda/envs/everest/bin/python2 get-pip.py
rm get-pip.py

/srv/conda/envs/everest/bin/python2 -m pip install tornado==4.5.3

git clone https://gitlab.com/everest/agent.git ~/everest_agent

cd ~/everest_agent
mkdir ./conf 
cp everest_agent/agent.conf.default conf/agent.conf

cp -f ~/bin/start4python2.sh bin/start.sh
chmod 755 bin/start.sh

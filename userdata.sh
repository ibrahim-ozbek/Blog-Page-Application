#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/ibrahim-ozbek/deneme-project.git
cd /home/ubuntu/deneme-project
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/deneme-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
 
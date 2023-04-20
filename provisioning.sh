
sudo apt update -y

sudo apt upgrade -y

sudo apt install nginx -y

sudo apt-get install python-software-properties

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash 

sudo apt-get install nodejs -y

sudo npm install pm2 -g

echo 'export DB_HOST=mongodb://192.168.10.150:27017/posts' >> /home/vagrant/.bashrc

source .bashrc

cd app

npm install

node seeds/seed.js

node app.js &
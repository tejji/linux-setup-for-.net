apt-get update
apt-get upgrade -y
apt-get install git -y
sudo apt-get install python3-yaml python3-xtermcolor -y
wget -qO- https://get.docker.io/ | sh
mkdir /var/docker
git clone https://github.com/discourse/discourse_docker.git /var/docker
cd /var/docker
cp samples/standalone.yml containers/app.yml
vi containers/app.yml

# Make sure that email is working by using telnet
#DISCOURSE_DEVELOPER_EMAILS – set this to your email address
#DISCOURSE_HOSTNAME – Set this to you hostname that you want Discourse to respond to. For example forum.example.com
#DISCOURSE_SMTP_ADDRESS – The SMTP address of your mail server
#DISCOURSE_SMTP_PORT – The SMTP port of your mail server
#DISCOURSE_SMTP_USER_NAME – The SMTP username for your mail server
#DISCOURSE_SMTP_PASSWORD – The SMTP password for your mail server
#DISCOURSE_SMTP_OPENSSL_VERIFY_MODE: none

# To copy the app.yml settings in application run
#./launcher bootstrap app

# To start the application
#./launcher start app

# whenever you change app.yml you need to run 
#./launcher rebuild app

# to ensure that mails are delivered run mailtest
#./launcher mailtest app



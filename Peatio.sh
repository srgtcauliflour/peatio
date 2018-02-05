{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww25400\viewh15520\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 apt-get update\
apt-get upgrade\
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev\
cd\
git clone git://github.com/sstephenson/rbenv.git .rbenv\
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc\
echo 'eval "$(rbenv init -)"' >> ~/.bashrc\
exec $SHELL\
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build\
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc\
exec $SHELL\
rbenv install 2.6.0\
rbenv global 2.6.0\
echo "gem: --no-ri --no-rdoc" > ~/.gemrc\
gem install bundler\
rbenv rehash\
sudo apt-get install mysql-server  mysql-client  libmysqlclient-dev\
apt-add-repository -y ppa:rwky/redis\
apt-get update\
apt-get install redis-server\
apt-add-repository 'deb http://www.rabbitmq.com/debian/ testing main'\
curl http://www.rabbitmq.com/rabbitmq-signing-key-public.asc | sudo apt-key add -\
apt-get update\
apt-get install rabbitmq-server\
rabbitmq-plugins enable rabbitmq_management\
service rabbitmq-server restart\
wget http://localhost:15672/cli/rabbitmqadmin\
chmod +x rabbitmqadmin\
mv rabbitmqadmin /usr/local/sbin\
add-apt-repository ppa:bitcoin/bitcoin\
apt-get update\
apt-get install bitcoind\
mkdir -p ~/.bitcoin\
touch ~/.bitcoin/bitcoin.conf\
nano ~/.bitcoin/bitcoin.conf\
bitcoind\
apt-get update\
apt-get install build-essential chrpath git-core libssl-dev libfontconfig1-dev\
cd /usr/local/share\
PHANTOMJS_VERISON=1.9.8\
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERISON-linux-x86_64.tar.bz2\
tar xjf phantomjs-$PHANTOMJS_VERISON-linux-x86_64.tar.bz2\
ln -s /usr/local/share/phantomjs-$PHANTOMJS_VERISON-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs\
ln -s /usr/local/share/phantomjs-$PHANTOMJS_VERISON-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs\
ln -s /usr/local/share/phantomjs-$PHANTOMJS_VERISON-linux-x86_64/bin/phantomjs /usr/bin/phantomjs\
curl -sL https://deb.nodesource.com/setup | sudo bash -\
apt-get install nodejs\
apt-get install imagemagick\
git clone git://github.com/peatio/peatio.git\
cd peatio\
bundle install\
bin/init_config\
nano config/application.yml\
nano config/currencies.yml\
config/database.yml\
# start all daemons\
bundle exec rake daemons:start\
bundle exec rails server}
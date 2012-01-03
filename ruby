echo "Installing Ruby 1.8.7 stable and making it the default Ruby ..."
  rvm install 1.8.7
  rvm use 1.8.7 --default

echo "Install Rubygems 1.3.7"
	rvm rubygems 1.8.7
	
echo "Set a ~/.gemrc file that will remove all the crap from gem installations (no-ri and no-rdoc)"
	echo "
install: --no-rdoc --no-ri
update: --no-rdoc --no-ri" >> ~/.gemrc
  source ~/.gemrc

echo "Install Bundler (1.0.12), the gem management tool"
	gem install -v=1.0.12 bundler 

echo "Install the fucking MySQL gem on MacOS, it usually sucks balls"
 	export ARCHFLAGS="-arch x86_64" ; gem install mysql -- --with-mysql-dir=/usr/local --with-mysql-config=/usr/local/mysql/bin/mysql_config
 

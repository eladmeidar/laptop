echo "Installing Ruby 1.8.7 stable and making it the default Ruby ..."
  rvm install 1.8.7
  rvm use 1.8.7 --default

echo "Install Rubygems 1.3.7"
	
echo "Set a ~/.gemrc file that will remove all the crap from gem installations (no-ri and no-rdoc)"
	echo "
install: --no-rdoc --no-ri
update: --no-rdoc --no-ri" >> ~/.gemrc
  source ~/.gemrc

echo "Install Bundler (1.0.12), the gem management tool"
	gem install -v=1.0.12 bundler 
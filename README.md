MoveIt
======

This application gives Price offers for a move company. It is a proof of concept.
An MVP.

install
-------
You can either just do install it manually on your computer or use the vagrant
box.

If manually do this:

1. Go to application directory
2. run ```bundle install```
1. fix the db settings in .env and ```config/databse.yml```
3. run ```rake db:create``` and ```rake db:migrate```
4. run ```rails s puma```

It shall now run and you can go to localhost:3000

If you want to run vagrant box:

1. Go to application directory
1. Run ```vagrant up```
1. Run ```vagrant ssh``` when done and go to ```cd /vagrant```
1. If provision in vagrant up failed, it usually fail on rvm install, run it again if it did: ```rvm install ruby-2.1.4```
1. Run ```gem install bundler```
1. fix the db settings in .env file and ```config/databse.yml```
3. run ```rake db:create``` and ```rake db:migrate```
4. run ```rails s puma```
It shall now run and you can go to localhost:3300

tests
-----
We have tests, using rspec. For run them, run ```rspec``` in application directory.

###Twitter Bootstrap Rails Test App

This is an example rails app implementing the twitter-bootstrap-rails gem. 
You can refer to this application for learning how to set up the gem and get
an understanding of how to use various pieces of twitter bootstrap.

There is a single resource at '/people' to demo a basic CRUD UI. The app is
live at http://teststrap.herokuapp.com.

###Getting Started:

1) Open the gemfile and add your appropriate database adapter gem. (e.g. mysql, pg, sqlite)

2) Create config/database.yml file. Examples are found here:
  https://gist.github.com/961978

3) Run the normal rails setup for your database

$ rake db:migrate

$ rake db:seed

$ rails server

Enjoy!

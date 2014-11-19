##Twitter Bootstrap Rails Test App

### One click deploy!

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)


This is an example rails app implementing the railsstrap gem. 
You can refer to this application for learning how to set up the gem and get
an understanding of how to use various pieces of twitter bootstrap.

There is a single resource at '/widgets' to demo a basic CRUD UI. 
The UI was generated using ```bundle exec rails g railsstrap:themed widgets```.
The app is live at http://teststrap.herokuapp.com.

###Getting Started:

1) Open the gemfile and add your appropriate database adapter gem. (e.g. mysql, pg, sqlite)

2) Create config/database.yml file. Examples are found [here](https://gist.github.com/961978)

3) Run the normal rails setup for your database

```
$ rake db:migrate

$ rake db:seed

$ rails server
```

Enjoy!

###Undoing what's been generated

Here's a simple way to back out of the customized resources teststrap has generated for demo purposes

```
bundle exec rails d widgets
bundle exec rails d admin
bundle exec rails d devise #for authentication
```

# Notice
This project will be deprecated on September 1st 2015 unless people scream to keep it. The repo will always exist but I personally will not continue using it for testing. Instead, I will be moving toward having an example application integrated in the [railsstrap](https://github.com/toadkicker/railsstrap) project. Future testing and examples will live there.

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

###TODO/Why would I click the big purple button?

Obviously this app is used to hack together a quick example of Railsstrap. No one is making a venture
capitalist's dream here by showing this app off to them. It's for you to enjoy as a developer and learn
a little Rails and make your life dealing with UI a bit easier. I can offer some more ideas, but that's
where you can come in and contribute. Some ideas I have:

Use [asset_sync](https://github.com/rumblelabs/asset_sync) gem to deal with serving assets faster. I leave
it out right now because Amazon Web Services offers a lot, which in developer circles offers more opinions,
and I'm not interested in those arguments as far as the purple button is concerned. Current metrics suggest
the app server is doing okay, and right now I am not going to incur a fee for something that is working fine.

Railsstrap offers CDN hosting of font assets. I specifically turn this off here because in the past this has
been such a pain point for Rails developers. I feel ya, it's a pain. So leaving this app to host the fonts
does make it slower, but it proves the points that it can do it for you. I'm a performance lover though, and
I would tell anyone who asks me that they should enable the CDN if they can. Otherwise configure your app
to support a CDN of your own to serve the compiled assets.

Finally, railsstrap offers a lot; animations, helpers, customizations not found in bootstrap. These are all
efforts made not by myself alone, but a combination of developers who are awesome. I don't have examples for
every bit. I do try to cover the gem with all the tests I possibly can but there are always gaps. I can only
offer my speedy reply to your issues and work to make this the best offering possible for you.

Good luck!

Todd

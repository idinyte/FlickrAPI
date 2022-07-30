Working with external API

[Project description](https://www.theodinproject.com/lessons/ruby-on-rails-flickr-api)

If you'll want to test the app:

1. Pull from github
2. Obtain flick api and secret keys [here](https://www.flickr.com/services/apps/create/)
3. Change "ENV["FLICKR_KEY"]" to flicker API key and "ENV["FLICKR_SECRET"]" to flicker secret key in app > controllers > static_pages_controller.rb
4. run $ rails s

you might also need $ gem install flickr
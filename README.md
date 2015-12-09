# Turboctrl

Say good-bye to rough integration with javascript. javascript controller harmonized with rails.

If you access to `/posts/1`, turboctrl call a `show` method of `PostsController` class in `app/assets/javascripts/controllers/posts.js.coffee`

```coffeescript
class @PostsController
  show: ->
    console.log "Hey!"
```

[![https://gyazo.com/542bed8f441dd003c2a85d8ed5bb7b38](https://i.gyazo.com/542bed8f441dd003c2a85d8ed5bb7b38.png)](https://gyazo.com/542bed8f441dd003c2a85d8ed5bb7b38)

## Install

Add this line to your application's Gemfile:

```ruby
gem 'turboctrl'
```

And then execute:

```sh
$ bundle
```

## Usage

Add turboctrl to your `application.js

```javascript
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require turboctrl
//= require_tree .
```

Add below attributes to your body tag.

```html5
<body data-turboctrl-slug="<%= turboctrl_slug %>"
      data-turboctrl-controller="<%= turboctrl_controller %>"
      data-turboctrl-action="<%= turboctrl_action %>">
```

Create your javascript controller using turboctrl generator.

```sh
$ rails g turboctrl Post
      create  app/assets/javascripts/controllers/post_controller.js.coffee
```

If you access to `/posts/1`, turboctrl call a `show` method of `PostsController` class in `app/assets/javascripts/controllers/posts.js.coffee`

## Use with turbolinks

controller of turboctrl called by XHR access too.

If you want to classify normal access(`ready`) as XHR access(`page:load`), You can use `event` argument.

```coffeescript
# app/assets/javascripts/controllers/posts_controller.js.coffee
class @PostsController
  index: (event) ->
    if event.type is 'ready'
      # normal access
    else
      # XHR access
```

# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/komagata/turboctrl. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

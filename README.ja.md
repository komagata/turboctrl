# Turboctrl

javascriptとの乱暴な統合にサヨナラ、railsにマッチしたjavascriptコントローラー。

もしあなたが`/posts/1`にアクセスしたら、turboctrlは`app/assets/javascripts/controllers/posts_controller.js.coffee`にある`PostsController`クラスの`show`メソッドを呼びます。

```coffeescript
class @PostsController
  show: ->
    console.log "Hey!"
```

[![https://gyazo.com/542bed8f441dd003c2a85d8ed5bb7b38](https://i.gyazo.com/542bed8f441dd003c2a85d8ed5bb7b38.png)](https://gyazo.com/542bed8f441dd003c2a85d8ed5bb7b38)

## インストール

あなたのアプリケーションのGemfileに下記を追加して下さい。

```ruby
gem 'turboctrl'
```

そして下記を実行してください。

```sh
$ bundle
```

## 使い方

turboctrlをapplication.jsに追加してください。

```javascript
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require turboctrl
//= require_tree .
```

あなたのbodyタグに下記を追加して下さい。

```html5
<body data-turboctrl-slug="<%= turboctrl_slug %>"
      data-turboctrl-controller="<%= turboctrl_controller %>"
      data-turboctrl-action="<%= turboctrl_action %>">
```

generatorでjavascriptコントローラーを作成してください。

```sh
$ rails g turboctrl Post
      create  app/assets/javascripts/controllers/post_controller.js.coffee
```

これで`/posts/1`にアクセスすると`/app/assets/javascripts/controlelrs/posts_controller.js.coffee`の`PostsController`クラスの`show`メソッドが呼ばれるようになります。

## turbolinksと一緒に使う

turboctrlのjavascriptはturbolinksでのXHRアクセスでも呼ばれます。

通常のアクセス(`ready`)とturbolinksによるXHRのアクセス(`page:load`)を区別したい場合はメソッドの引数のイベントを使って判断することができます。

```coffeescript
# app/assets/javascripts/controllers/posts_controller.js.coffee
class @PostsController
  index: (event) ->
    if event.type is 'ready'
      # normal access
    else
      # XHR access
```

## コントリビュート

バグレポート、Pull Request歓迎です。

## License

このgemは[MIT License](http://opensource.org/licenses/MIT)です。

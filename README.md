backbone-rails-handlebars-example
=================================

An starter application with backbone.js, rails, and handlebars. 

```sh
$ rails new .
```

Add:
- [x] gem 'backbone-on-rails'
- [x] gem 'handlebars_assets'
- [x] gem 'less-rails-bootstrap'
- [x] gem "haml-rails"


Setting up our backbone installation

```sh
$ bundle install
$ rails generate backbone:install
$ rails generate backbone:scaffold task
$ rails generate
```

Setting up our rails installation

```sh
$ rails generate controller tasks
$ rails generate model Task title:string description:string complete:boolean
```

Setting up the DB
```sh
$ rake db:create
$ rake db:migrate RAILS_ENV=development
$ rake db:seed
```

Had to do db:seed after create as I forgot to create seeds.rb
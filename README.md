backbone-rails-handlebars-example
=================================

##### An starter application with backbone.js, rails, and handlebars. 


### Running this example:

```sh
$ bundle install
$ rake db:create
$ rake db:migrate RAILS_ENV=development
$ rake db:seed
```

### Recipe for creating a new backbone+rails+handlebars app

```sh
$ rails new .
```

Add:
- [ ] gem 'backbone-on-rails'
- [ ] gem 'handlebars_assets'
- [ ] gem 'therubyracer'
- [ ] gem 'less-rails-bootstrap'
- [ ] gem "haml-rails"

###### Setting up our backbone installation

```sh
$ bundle install
$ rails generate backbone:install
$ rails generate backbone:scaffold task
$ rails generate
```

###### Setting up our rails installation

```sh
$ rails generate controller tasks
$ rails generate model Task title:string description:string complete:boolean
```

###### Setting up the DB
```sh
$ rake db:create
$ rake db:migrate RAILS_ENV=development
$ rake db:seed
```
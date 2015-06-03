#Baby's First Dynamic Rails App
###Description
- Building a Rails app that returns users from a database given the correct URL

###Requirements
- Ruby v2.2.0p0 installed globally or to the app directory

###Setup
- Fork this repo
- Clone this repo
- Enter the following in the terminal under the path of your cloned directory:

```
$ rake db:migrate
$ rake db:setup
```
- Now you can turn on the rails server

```
$ rails s
```
- You should then be able to open the app in your browser by entering the following url:  <a>http://localhost:3000</a>

- You can explore users of the database by appending '/users/' to the end of the url, and search by user id by appending '/user_id/' to '/users/' where 'user_id' is the desired user id integer

- You can also query the database by user field, create users from the database, and delete users from the database

- For more details on how to interact with the server database by url check the specifications set in the assignment at <a>https://tiy-classroom.herokuapp.com/assignments/32</a>

###Topics
- Become familiar with Active Record and Rails
- Be able to write migrations
- Be able to use controllers and actions.
- Be able to write routes in the routes.rb file in rails.

###Takeaway

- rails is p cool

###Contents of this Repo

```
proj1
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
├── app
│   ├── assets
│   │   ├── images
│   │   ├── javascripts
│   │   │   ├── application.js
│   │   │   └── users.coffee
│   │   └── stylesheets
│   │       ├── application.css
│   │       └── users.scss
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── concerns
│   │   └── users_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   └── users_helper.rb
│   ├── mailers
│   ├── models
│   │   ├── concerns
│   │   └── user.rb
│   └── views
│       ├── layouts
│       │   └── application.html.erb
│       └── users
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── setup
│   └── spring
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   ├── backtrace_silencers.rb
│   │   ├── cookies_serializer.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mime_types.rb
│   │   ├── session_store.rb
│   │   └── wrap_parameters.rb
│   ├── locales
│   │   └── en.yml
│   ├── routes.rb
│   └── secrets.yml
├── config.ru
├── db
│   ├── development.sqlite3
│   ├── migrate
│   │   └── 20150602194812_create_users.rb
│   ├── schema.rb
│   ├── seeds.rb
│   └── test.sqlite3
├── lib
│   ├── assets
│   └── tasks
├── log
│   └── development.log
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── favicon.ico
│   └── robots.txt
├── test
│   ├── controllers
│   │   └── users_controller_test.rb
│   ├── fixtures
│   │   └── users.yml
│   ├── helpers
│   ├── integration
│   ├── mailers
│   ├── models
│   │   └── user_test.rb
│   └── test_helper.rb
├── tmp
│   ├── cache
│   │   └── assets
│   ├── pids
│   ├── sessions
│   └── sockets
└── vendor
    └── assets
        ├── javascripts
        └── stylesheets
```

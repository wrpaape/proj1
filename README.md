== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

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
$ rake db:setup
$ rake db:migrate
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

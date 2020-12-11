# Alpha Blog
### A blog website created to learn the fundamentals of Ruby on Rails

* Working with routes: Added routes - /home (root) /about (get)

* Added controller for the static pages

* Added views for controller to serve the files

* Working with models to create a db to perform CRUD operations

* Working with model class to validate data using `validates`

* Added more routes to list all & list one that directs to a method in controller to access data and to display it in views

* Created the 'create' and 'new' method in articles controller along with views to successfully display it on webpage


### Rails commands
* `rails generate new <project name>`
* `rails generate controller <controller_name>`
* `rails generate migration <create_articles>`
* `rails db:migrate`
* `rails console`
* `rails routes --expanded` (how to check the app for what routes it has)
#### Calling the Article model class
* `Article.all` (displays the table that does a sql query (SELECT * FROM "articles")
* `Article.create()` (creates an article by using an INSERT sql statement based on the class attributes to that creates a new object)
* You can use `article = Article.new(title:"porsche", description:"911 turbo s", price:"99999.99")` to create a new Article object to later save
* `Article.find(id)`
#### Calling the initialized variable
* `article.destroy` (executes a sql query that performs: DELETE FROM "articles" WHERE "articles"."id" = ?)
* `article.save` (saves the created data)
* `article.errors`
* `article.errors.full_messages`

### Rails naming conventions
#### Articles resource

* Model name: article
* Article model file name: article.rb
* Article model class name: Article
* Table name: articles

### Active Record Associations
* one_to_many relationship - A user (singular) can have many posts(plural)
* Database changes to create a new migration to add a column in articles table that is linked to user_id
* Created another data table to log users id, username, email
* The `articles` table has a key that is linked using user_id and is associated to the users table
* In our `rails console` we can verify this by testing

### Using Bcrypt to hash/salt user passwords
* `BCrypt::Password.create("password")`
* `user.authenticate("password") ` - password check method using BCrpyt
* A hash will never be the same even if the password is the same due to salting.
* Passwords can be converted to a hash. The hash can also be decrypted to validate passwords
* When a user tries to login with password. We will use `user.authenticate("entered password")`
* .authenticate() returns the user object if valid, or false if invalid.

### Pagination
* Utilized pagination to decrease load time using gem `will_paginate`

### User authentication / registration

### Login using sessions


### Minitest with rails 
  * Using the TDD approach 
  * Learning about db field validation using unit tests

Heroku Development
* Get started by creating an account
* `git add .`
* `git commit -m ""`
* `heroku run rails db:migrate` (run migrations on production side)
* `git push heroku <master>` (pushes staged files to production for deployment)
* `heroku open`

# Alpha Blog
### A blog website created to learn the fundamentals of Ruby on Rails

* Working with routes: Added routes - /home (root) /about (get)

* Added controller for the static pages

* Added views for controller to serve the files


### Rails commands
* `rails generate new <project name>`
* `rails generate controller <controller_name>`
* `rails generate migration <create_articles>`
* `rails db:migrate`
* `rails console`
#### Calling the Article model class
* `Article.all` (displays the table that does a sql query (SELECT * FROM "articles")
* `Article.create()` (creates an article by using an INSERT sql statement based on the class attributes to that creates a new object)
* `Article.find(id)`
#### Calling the initialized variable
* `article.destroy` (executes a sql query that performs: DELETE FROM "articles" WHERE "articles"."id" = ?)
* `article.save` (saves the created data)

### Rails naming conventions
#### Articles resource

* Model name: article
* Article model file name: article.rb
* Article model class name: Article
* Table name: articles
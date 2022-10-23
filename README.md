# README

* Ruby version

  -  `ruby-3.2.0`

* Database creation

  -  `rake db:create`

* Database initialization

  -  `rake db:migrate`

* How to run the test suite

  - `rake test`

* Pagination

  - Pagination is implemented using the `will-paginate` gem. The pagination param name is
    `page`

* Params for `pokemon:create` API

  - `name: string, type1: integer, type2: integer, total: integer, hp: integer, attack: integer, defense: integer, sp_atk: integer, sp_def: integer, speed: integer, generation: integer, legendary: boolean`

* Heroku

  - This app is also deployed in heroku and can be accessed using the following url:
    `https://powerful-journey-14780.herokuapp.com/pokemons?page=1`

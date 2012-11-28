# FooBarApi

A simple/stupid rails-api (3.2.8) project for json api testing.

No authentication, DataMapper ORM with a sqlite database, only json, no comment, no query params…

## Prerequisites

Obviously enough, you need ruby to use this project. So, install ruby using `rbenv` and `ruby-build`
(15 minutes):

    $ git clone https://github.com/sstephenson/rbenv.git .rbenv
    $ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    $ exec $SHELL
    $ mkdir -p ~/.rbenv/plugins
    $ cd ~/.rbenv/plugins
    $ git clone https://github.com/sstephenson/ruby-build.git
    $ rbenv install 1.9.3-p327
    $ rbenv rehash

To set the newly installed ruby as default (optionnal):

    $ rbenv global 1.9.3-p327

You need `bundler` to manage the project's dependencies:

    $ gem install bundler && rbenv rehash

## Clone the project and install the dependencies

    $ git clone https://github.com/nibua-r/foo-bar-api.git
    $ cd foo-bar-api
    $ bundle install --binstubs

## Up and running in development mode

    $ cd foo-bar-api

Initialize and populate the sqlite database with random data:

    $ bin/rake db:automigrate db:seed

Launch the server in development mode:

    $ ./script/rails server

The server is running and listening on the 3000 port.

## First test with `curl`

    $ curl -v -o - -X GET http://127.0.0.1:3000/foos

If everything went fine, you should have 50 foos formatted as a json array in the response body
(along with a 200 OK).

You should run `bin/rake routes` to see what are the available endpoints:

````
foo_bars GET    /foos/:foo_id/bars(.:format)     bars#index {:format=>:json}
         POST   /foos/:foo_id/bars(.:format)     bars#create {:format=>:json}
 foo_bar GET    /foos/:foo_id/bars/:id(.:format) bars#show {:format=>:json}
         PUT    /foos/:foo_id/bars/:id(.:format) bars#update {:format=>:json}
         DELETE /foos/:foo_id/bars/:id(.:format) bars#destroy {:format=>:json}
    foos GET    /foos(.:format)                  foos#index {:format=>:json}
         POST   /foos(.:format)                  foos#create {:format=>:json}
     foo GET    /foos/:id(.:format)              foos#show {:format=>:json}
         PUT    /foos/:id(.:format)              foos#update {:format=>:json}
         DELETE /foos/:id(.:format)              foos#destroy {:format=>:json}
````

## Foos and Bars!

The model names and fields use metasyntactic variable names to not be constrained by any world
use-cases. As a consequence, we are free to strongly modify the models in any way.

At that time, only two simple models are implemented: Foo and Bar. Those models are obviously
subject to change.

### Foo

A `Foo` ressource is composed of:

qux
: _Required_ **string (255)**

quux
: _Optional_ **string**

bars
: _Optional_ **nested bar resources**

#### GET all the foos

    GET /foos(.json)

Using curl:

    $ curl -v -o - -X GET http://127.0.0.1:3000/foos(.json)

##### Response

#### GET a single foo

    GET /foos/:id(.json)

Using curl:

    $ curl -v -o - -X GET http://127.0.0.1:3000/foos/1(.json)

##### Response

#### POST

##### Input

qux
: _Required_ **string (255)**

quux
: _Optional_ **string**

    $ curl -v -o - -X POST -H "Content-Type: application/json" \
       -d '{"qux": "blurp", "quux": "This is just a creation test"}' \
       http://127.0.0.1:3000/foos

##### Response

    HTTP/1.1 201 Created
    Location: http://127.0.0.1:3000/foos/53
    Content-Type: application/json; charset=utf-8
    […]
    {"id":53,"qux":"Renaud","quux":"This is a creation test","created_at":"2012-11-27T11:11:49+01:00","updated_at":"2012-11-27T11:11:49+01:00"}* Closing connection #0

#### PUT

##### Input

qux
: _Optional_ **string (255)**

quux
: _Optional_ **string**


    $ curl -v -o - -X PUT -H "Content-Type: application/json" \
       -d '{"qux": "Modify me?"}' \
       http://127.0.0.1:3000/foos/53.json

##### Response

    HTTP/1.1 200 OK
    Content-Type: application/json; charset=utf-8


#### DELETE

##### Input

    $ curl -v -o - -X DELETE -H "Content-Type: application/json" \
       http://127.0.0.1:3000/foos/53.json

##### Response

    HTTP/1.1 204 No Content

### Bar

The definition of the DataMapper `Bar` ressource is:

````ruby
class Bar

  include DataMapper::Resource

  property :id, Serial
  property :baz, Integer
  property :corge, Float
  property :grault, Boolean
  property :garply, DateTime

  belongs_to :foo

end

````

#### GET
#### POST
#### DELETE

## License

```
            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2012 Renaud Aubin <renaud.aubin@gmail.com>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.
```

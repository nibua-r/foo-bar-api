# FooBarApi

A simple/stupid rails-api (3.2.8) project for json api testing.

## Prerequisites

Obviously enough, you need ruby to use this project. So, install ruby using `rbenv` and `ruby-build`
(15 minutes):

    $ git clone https://github.com/sstephenson/rbenv.git .rbenv
    $ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    $ exec $SHELL
    $ mkdir -p ~/.rbenv/plugins
    $ cd ~/.rbenv/plugins
    $ git clone https://github.com/sstephenson/ruby-build.git
    $ rbenv install 1.9.3-p286
    $ rbenv rehash

To set the newly installed ruby as default (optionnal):

    $ rbenv global 1.9.3-p286

You need `bundler` to manage the project's dependencies:

    $ gem install bundler

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

## Foos and Bars!

TODO: describe the data models and document the api.

### Foo
#### GET
#### POST
#### DELETE

### Bar
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

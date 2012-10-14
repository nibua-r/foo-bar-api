# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  Foo.create(word: /\w+/.gen,
             sentence: /[:sentence:]/.gen,
             bars:
             rand(0..3).times.collect do
               Bar.create(integer: rand(1.terabyte),
                          float: rand,
                          boolean: [true, false].sample)
             end
             )
end

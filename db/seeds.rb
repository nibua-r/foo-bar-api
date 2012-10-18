# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  Foo.create(qux: /\w+/.gen,
             quux: /[:sentence:]/.gen,
             bars:
             rand(0..3).times.collect do
               Bar.create(baz: rand(1.terabyte),
                          corge: rand,
                          grault: [true, false].sample,
                          garply: DateTime.now)
             end
             )
end

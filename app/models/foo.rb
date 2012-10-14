class Foo

  include DataMapper::Resource

  property :id, Serial

  property :word, String
  property :sentence, Text

  has n, :bars

end

class Bar

  include DataMapper::Resource

  property :id, Serial
  property :baz, Integer
  property :corge, Float
  property :grault, Boolean
  property :garply, DateTime

  belongs_to :foo

end

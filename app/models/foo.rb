class Foo

  include DataMapper::Resource

  property :id, Serial

  property :qux, String, required: true
  property :quux, Text, lazy: false

  has n, :bars

  # Creation timestamp. Automatically defined at creation.
  # @return [DateTime] The creation datetime.
  property :created_at, DateTime

  # Update timestamp. Automatically set at update.
  # @return [DateTime] The last update datetime.
  property :updated_at, DateTime

end

class Bar

  include DataMapper::Resource

  property :id, Serial
  property :integer, Integer
  property :float, Float
  property :boolean, Boolean

  belongs_to :foo

end

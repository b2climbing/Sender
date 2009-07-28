class Climb
  include DataMapper::Resource
  belongs_to :location
  belongs_to :grade
  has n, :ticks
  property :id, Serial
  property :name, String
  property :updated_at, DateTime
end
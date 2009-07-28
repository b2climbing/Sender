class Tick
    include DataMapper::Resource
    belongs_to :user
    belongs_to :climb
    property :id, Serial
    property :name, String
    property :updated_at, DateTime
end
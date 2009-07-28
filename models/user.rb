class User
    include DataMapper::Resource
    has n, :ticks
    property :id, Serial
    property :name, String
    property :email, String
    property :created_at, DateTime
end
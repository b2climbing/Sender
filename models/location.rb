class Location
    include DataMapper::Resource
    has n, :climbs
    property :id, Serial
    property :name, String
end
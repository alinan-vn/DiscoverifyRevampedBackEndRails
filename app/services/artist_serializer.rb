class ArtistSerializer

    def initialize(artist_object)
        @artist = artist_object
    end

    def to_serialized_json
        options = {}
        options[:include] = {
                :songs => {
                    :only => [:name, :likes]
                },
                :genres => {
                    :only => [:name]
                }                
            }
        options[:except] = [:created_at, :updated_at]
        
        @artist.to_json(options)
    end

end

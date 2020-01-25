class GenreSerializer

    def initialize(genre_object)
        @genre = genre_object
    end

    def to_serialized_json
        options = {}
        options[:include] = {
                :artists => {
                    :only => [:name]
                },
                :songs => {
                    :only => [:name]
                }                
            }
        options[:except] = [:created_at, :updated_at]
        
        @genre.to_json(options)
    end

end

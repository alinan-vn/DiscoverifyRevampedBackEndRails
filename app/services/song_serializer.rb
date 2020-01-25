class SongSerializer

    def initialize(song_object)
        @song = song_object
    end

    def to_serialized_json
        options = {}
        options[:include] = {
                :artist => {
                    :only => [:name, :video_url, :likes]
                },
                :genre => {
                    :only => [:name]
                }                
            }
        options[:except] = [:updated_at]
        
        @song.to_json(options)
    end

end

# def to_serialized_json
#     @sighting_object.to_json(:include => {
#       :bird => {:only => [:name, :species]},
#       :location => {:only => [:latitude, :longitude]}
#     }, :except => [:updated_at])
#   end
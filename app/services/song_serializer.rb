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
        options[:except] = [:created_at, :updated_at]

        # JSON.pretty_generate(options)
        @song.to_json(options)
    end

end

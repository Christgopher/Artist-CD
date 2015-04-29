class Artist
  @@Artists = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@Artists.length().+(1)
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@Artists
  end

  define_method(:save) do
    @@Artists.push(self)
  end

  define_singleton_method(:clear) do
    @@Artists = []
  end

  define_singleton_method(:find) do |identifier|
    found_artist = nil
    @@Artists.each() do |artist|
      if artist.id().eql?(identifier.to_i())
        found_artist = artist
      end
    end
    found_artist
  end
end

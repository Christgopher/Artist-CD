class CD
  @@CDs = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@CDs.length().+(1)
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@CDs
  end

  define_method(:save) do
    @@CDs.push(self)
  end

  define_singleton_method(:clear) do
    @@CDs = []
  end

  define_singleton_method(:find) do |identifier|
    found_CD = nil
    @@CDs.each() do |disk|
      if disk.id().eql?(identifier.to_i())
        found_CD = disk
      end
    end
    found_CD
  end
end

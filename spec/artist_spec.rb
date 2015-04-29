require('rspec')
require('CD')
require('artist')

describe(Artist) do
  before() do
    Artist.clear()
  end

  describe("#name") do
    it("returns the name of an artist") do
      test_artist = Artist.new("Black Sabbath")
      test_artist.save()
      expect(test_artist.name()).to(eq("Black Sabbath"))
    end
  end

  describe("#save") do
    it("saves an artist to the array of saved artist's") do
      test_artist = Artist.new("Black Sabbath")
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out the artist array") do
      test_artist = Artist.new("Black Sabbath")
      test_artist.save()
      Artist.clear()
      expect(Artist.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of an artist") do
      test_artist = Artist.new("Black Sabbath")
      test_artist.save()
      expect(test_artist.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("finds an artist based on it's ID number") do
      test_artist = Artist.new("Black Sabbath")
      test_artist.save()
      test_artist2 = Artist.new("Juas Priest")
      test_artist2.save()
      expect(Artist.find(test_artist.id())).to(eq(test_artist))
    end
  end
end

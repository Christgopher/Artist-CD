require('rspec')
require('CD')

describe(CD) do
  before() do
    CD.clear()
  end

  describe("#name") do
    it("returns the name of a CD") do
      test_CD = CD.new("Paranoid")
      test_CD.save()
      expect(test_CD.name()).to(eq("Paranoid"))
    end
  end

  describe("#save") do
    it("saves a CD to the array of saved CD's") do
      test_CD = CD.new("Paranoid")
      test_CD.save()
      expect(CD.all()).to(eq([test_CD]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(CD.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out the CD array") do
      test_CD = CD.new("Paranoid")
      test_CD.save()
      CD.clear()
      expect(CD.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of a CD") do
      test_CD = CD.new("Paranoid")
      test_CD.save()
      expect(test_CD.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("finds a CD based on it's ID number") do
      test_CD = CD.new("Paranoid")
      test_CD.save()
      test_CD2 = CD.new("Black Sabbath")
      test_CD2.save()
      expect(CD.find(test_CD.id())).to(eq(test_CD))
    end
  end
end

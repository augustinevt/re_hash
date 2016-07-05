require('rspec')
require('myHash')

describe(MyHash) do
  describe('MyHash#fetch') do
    it('returns a stored value for a key') do
      test_hash = MyHash.new()
      test_hash.store('seal', 'mammal')
      expect(test_hash.fetch('seal')).to(eq('mammal'))
    end
  end

  describe('MyHash#has_key?') do
    it('returns false if the hash does not contain the key') do
      test_hash = MyHash.new()
      test_hash.store('seal', 'mammal')
      expect(test_hash.has_key?('nemotoad')).to(eq(false))
    end
  end

  describe('MyHash#has_value?') do
    it('returns false if the hash does not contain the value') do
      test_hash = MyHash.new()
      test_hash.store('seal','mammal')
      expect(test_hash.has_value?('insect')).to(eq(false))
    end
  end

end

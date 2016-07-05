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
end

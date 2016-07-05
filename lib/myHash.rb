class MyHash

  define_method(:initialize) do
    @hash_array = [];
  end

  define_method(:store) do |key, value|
    @hash_array.push(key)
    @hash_array.push(value)
  end

  define_method(:fetch) do |key|
    @hash_array.each_with_index do |value, index|
      if (value == key && index%2 == 0)
        return @hash_array[(index + 1)]
      end
    end
  end
  
end

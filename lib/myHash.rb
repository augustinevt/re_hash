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

  define_method(:has_key?) do |key|
    @hash_array.each_with_index do |value, index|
      if (value == key && index%2 == 0)
        return true
      end
    end
    false
  end

  define_method(:has_value?) do |input_value|
    @hash_array.each_with_index do |value, index|
      if(value == input_value && index%2 != 0)
        return true
      end
    end
    false
  end

end

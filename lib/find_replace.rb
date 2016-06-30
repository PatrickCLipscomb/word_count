class String
  define_method(:find_replace) do |find, replace|
    str_array = self.split(' ')
    counter = 0
    str_array.each() do |word|
      if word == find
        str_array[counter] = replace
      end
      counter += 1
    end
    str_array.join(' ')
  end
end

puts 'hello universe'.find_replace('universe', 'galaxy')

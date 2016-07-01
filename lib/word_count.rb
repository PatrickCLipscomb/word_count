class String
  define_method(:word_count) do |find|
    str = self.downcase
    str.delete! ".,!?'"
    str_array = str.split(' ')
    counter = 0
    str_array.each() do |word|
      if word == find
        counter += 1
      end
    end
    counter
  end
end

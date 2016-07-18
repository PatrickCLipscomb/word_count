class String
  define_method(:word_freq) do |find|
    searched_str = find.downcase
    str = self.downcase
    str.delete! ",.!?'"
    str_array = str.split(' ')
    counter = 0
    str_array.each() do |word|
      if word == searched_str
        counter += 1
      end
    end
    counter
  end
end

class String
  define_method(:word_freq) do |find|
    to_count = find.downcase
    str = self.downcase
    str.delete! ",.!?'"
    str_array = str.split(' ')
    counter = 0
    str_array.each() do |word|
      if word == to_count
        counter += 1
      end
    end
    counter
  end
end

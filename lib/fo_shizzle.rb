class String
  define_method(:fo_shizzle) do
    words = self.split()
    new_word = []
    words.each do |word|
      letters = word.split('')
      new_word.push(letters.shift)
      letters.each do |letter|
        new_word.push(
        if letter == 's'
          letter = 'z'
        else
          letter
        end)
      end
    end
    new_word.join()
  end
end

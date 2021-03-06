class String
  define_method(:scrabble) do
    letters = self.downcase().split("")
    score = 0
    
    vals = Hash.new()
    vals.store('d',2)
    vals.store('g',2)
    vals.store('b',3)
    vals.store('c',3)
    vals.store('m',3)
    vals.store('p',3)
    vals.store('f',4)
    vals.store('h',4)
    vals.store('v',4)
    vals.store('w',4)
    vals.store('y',4)
    vals.store('k',5)
    vals.store('j',8)
    vals.store('x',8)
    vals.store('q',10)
    vals.store('z',10)

    letters.each() do |letter|
      if(vals.has_key?(letter))
        score += vals.fetch(letter)
      else
        score += 1
      end
    end
    score
  end
end

class Array


  def injection_replicate(accumulator=0)
    if accumulator == 0
      result = accumulator
    else
      result = self.first
    end
      self.each do |element|
        result = yield(result, element)
    end
    result
  end






end

# [1, 2, 3, 4].injection_replicate {|result, element| result + element}
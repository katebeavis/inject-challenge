class Array
  def injection_replicate(accumulator = nil)
    if accumulator.nil?
      result = first
    else
      result = accumulator + 1
    end
    self[1..-1].each do |element|
      result = yield(result, element)
    end
    result
  end
end

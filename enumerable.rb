module MyEnumerable
  def all?(&block)
    each do |e|
      return false unless block.call(e)
      # unless we call on our block all our elements (aka yield) return false
    end
    true
  end

  def any?(&block)
    each do |e|
      return true if block.call(e)
      # if we yield at least one of our elements return true
    end
    false
  end

  def filter(&block)
    result = []
    each do |e|
      result << e if block.call(e)
      # add each element to array that yields, then return result
    end
    result
  end
end

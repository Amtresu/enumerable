module MyEnumerable
  def all?
    each { |item| return false unless yield item }
    true
  end

  def any?
    each { |item| return true if yield item }
    false
  end

  def filter?
    val = []
    each { |item| val.push(item) if yield item }
    val
  end
end

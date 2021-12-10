module MyEnumerable
  def all_e?
    each { |item| return false unless yield(item) }
    true
  end

  def any_e?
    each { |item| return true if yield(item) }
    false
  end

  def filter_e?
    result = []
    each { |item| result << item if yield item }
    result
  end
end

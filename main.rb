require_relative './enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    (0...@list.length).each do |i|
      yield @list[i]
    end
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all_e? { |e| e < 5 })
puts(list.all_e? { |e| e > 5 })
puts(list.any_e? { |e| e == 2 })
puts(list.any_e? { |e| e == 5 })
puts(list.filter_e?(&:even?))

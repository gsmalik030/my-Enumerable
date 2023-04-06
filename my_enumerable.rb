module MyEnumerable
  def all?
    if !block_given?
      puts "No block given"
      return
    end
    each do |n|
      return false unless yield(n)
    end
    true
  end

  def any?
    if !block_given?
      puts "No block given"
      return
    end
    each do |n|
      return true unless yield(n)
    end
    false
  end

  def filter
    if !block_given?
      puts "No block given"
      return
    end
    result = []
    each do |n|
      result << n if yield(n)
    end
    result
  end
end

module MyEnumerable
  def all?
    if block_given?
      each do |n|
        return false unless yield(n)
      end
      return true
    end
    puts "No block given"
    return
  end

  def any?(&block)
    if block_given?
      result = false
      each { |item| result = true if block.call(item) }
      return result
    end
    puts "No block given"
    return
  end

  def filter
    if block_given?
      result = []
      each do |n|
        result << n if yield(n)
      end
      return result
    end
    puts "No block given"
    return
  end
end

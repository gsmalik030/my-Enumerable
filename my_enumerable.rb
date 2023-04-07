module MyEnumerable
  def all?(&block)
    if block_given?
      each do |item|
        return false unless block.call(item)
      end
      return true
    end
    puts 'No block given'
  end

  def any?(&block)
    if block_given?
      result = false
      each { |item| result = true if block.call(item) }
      return result
    end
    puts 'No block given'
  end

  def filter(&block)
    if block_given?
      result = []
      each do |n|
        result << n if block.call(n)
      end
      return result
    end
    puts 'No block given'
  end
end

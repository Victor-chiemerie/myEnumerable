module MyEnumerable
  def all?
    arr = []
    @list.each { |i| arr.push(i) if yield i }
    puts arr.length == @list.length
  end

  def any?
    @list.each do |i|
      puts true if yield i
    end
    puts false

    def filter
      @array = []
      @list.each { |i| @array.push(i) if yield i }
      print "#{@array}\n"
    end
end

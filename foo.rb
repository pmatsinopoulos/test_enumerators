class Foo
  include Enumerable

  attr_reader :data

  def initialize
    @data = (1..10).to_a
    @index = -1
  end

  def each
    puts "starting each (is it block given? : #{block_given?})"
    return enum_for(:each) unless block_given?

    loop do
      @index += 1
      puts "loop... index: #{@index}"
      raise StopIteration if @index >= @data.size
      yield @data[@index]
    end
  end

  private(:data)
end

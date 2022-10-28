require_relative 'enumerable'

class MyList
    def initialize(*list)
        @list = []
        list.each { |arg| @list << arg }
    end
  
    include enumerable
  
    def each
      @list.each { |value| yield value if block_given? }
    end
  end
  
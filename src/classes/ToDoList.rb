class ToDoList

    include Enumerable

    attr_accessor :items

    def initialize(items=[])
        @items = items
    end

    def each
        @items.each { |item| yield(item)}
    end

    def <<(item)
        if (!item.nil? )
            @items.unshift(item)
        end
    end
end
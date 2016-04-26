class TodoList
    # methods and stuff go here
    attr_reader :title, :items
    
    def initialize( list_title )
      @title = list_title
      @items = Array.new
    end
    
    def set_title( list_title )
      @title = list_title
    end
    
    def add_item( item_description = "default_item_description" )
      item = Item.new( item_description )
      @items.push( item )
    end
    
    def show()
      puts ""
      puts @title
      if( @items == nil )
        return
      end
      
      @items.each do |item|
        if( item != nil )
          item.show()
        end
      end
      
    end
    
    def delete_by_index( idx )
        @items.delete_at( idx )
    end
    
    def set_as_completed_by_index( idx )
      if( idx>=0 && idx<@items.length )
        items[idx].set_as_completed()
      end
    end
    
    def reverse()
      @items.reverse!
    end
    
    def num()
      @items.length
    end
    
    def is_empty()
      num() <= 0
    end   
end

class Item
    # methods and stuff go here
    attr_reader :description, :completed_status
    
    def initialize( item_description )
      @description = item_description
      @completed_status = false
    end
    
    def show()
      puts @description + "   " + @completed_status.to_s
    end
    
    def completed?
      return ( @completed_status == true )
    end
    
    def set_as_completed()
      @completed_status = true
    end
end

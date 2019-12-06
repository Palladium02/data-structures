class Assignment
    attr_accessor :keys, :values

    def initialize(key="", value="")
      if key != "" and value != "" then
        @keys = [key]
        @values = [value]
      else
        @keys = []
        @values = []
      end
    end

    #push function to add new assigment
    def push(key, value)
        if @keys.include?(key) then
            return "Your desired key is already used!"
        elsif !self == value then
            @keys.push(key)
            @values.push(value)
        else
          return "Invalid input!"
        end
    end

    #onedirectional search
    def search(key)
        if @keys.include?(key) then
            return @values[@keys.index(key)]
        else
            return nil
        end
    end

    #check existence of key in assingment
    def includes?(key)
        if @keys.include?(key) then
            return true
        else
            return false
        end
    end

    def size()
        return @keys.length
    end

    def index(key)
      if @keys.include?(key) then
        return @keys.index(key)
      else
        return "No such key in this assignment!"
      end
    end

    #delete function, only delition over the key name possible
    def delete(key)
        if @keys.include?(key) then
            @values.delete_at(@keys.index(key))
            @keys.delete(key)
        else
            return "No such key in this assignment!"
        end
    end

    def merge(assignment)
      if assignment.is_a? Assignment then
        index = 0
        indice = []
        assignment.keys.each do |elem|
          if !@keys.include?(elem) then
            @keys.push(elem)
            indice.push(index)
          end
          index+=1
        end
        indice.each do |ind|
          @values.push(assignment.values[ind])
        end
      else
        return "Can't merge #{assignment.class} with assignment!"
      end
    end

    #simple inspect function returns object
    def inspect()
        return self
    end

    #further inspect methods
    def values()
        return @values
    end

    def keys()
        return @keys
    end

end
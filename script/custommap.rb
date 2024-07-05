def custom_map(array)
    array.map do |x|
      if x > 10
         return x+1
      else
         return x-1
      end
    end

    def custom(x, &block)
        block.call(x)
    end
end
return arr.custom_map
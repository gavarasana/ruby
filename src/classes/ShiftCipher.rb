class ShiftCipher
    
    @@lowerCase = [*'a'..'z']
    @@upperCase = [*'A'..'Z']

    def self.encode(inputString, shiftPosition)
        
        inputString.chars.map do |char|         
            
            if @@lowerCase.include?(char)
                i = @@lowerCase.find_index(char)
                mod = i % @@lowerCase.length
                @@lowerCase[mod + shiftPosition]
            elsif @@upperCase.include?(char)
                i = @@upperCase.find_index(char)
                mod = i % @@upperCase.length
                @@upperCase[mod + shiftPosition]
            else
                char
            end      
        end.join('')
    end

    def self.decode(inputString, shiftPosition)
        
        inputString.chars.map do |char|         
            
            if @@lowerCase.include?(char)
                i = @@lowerCase.find_index(char)
                mod = i % @@lowerCase.length
                @@lowerCase[mod - shiftPosition]
            elsif @@upperCase.include?(char)
                i = @@upperCase.find_index(char)
                mod = i % @@upperCase.length
                @@upperCase[mod - shiftPosition]
            else
                char
            end      
        end.join('')
    end


end
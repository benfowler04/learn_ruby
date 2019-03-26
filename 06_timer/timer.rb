class Timer

    attr_reader :seconds
  
    def initialize
        @seconds = 0
        @minutes = 0
        @hours = 0
        @time_string = "00:00:00"
    end

    def seconds=(number)
        @hours = number / 3600
        number = number - @hours * 3600
        @minutes = number / 60
        number = number - @minutes * 60
        @seconds = number       
    end

    def time_string
        @hours = padded(@hours)
        @minutes = padded(@minutes)
        @seconds = padded(@seconds)
        "#{@hours}:#{@minutes}:#{@seconds}"
    end

    def padded(number)
        padded_number = number.to_s
        if padded_number.length == 1
            padded_number = "0" + padded_number
        end
        padded_number
    end

end

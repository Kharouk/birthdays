require 'date'


class BirthdayList
    
    attr_reader :list
    def initialize
        @months = Date::MONTHNAMES
        @list = []
        @date = ""
    end

    def add(name, date)
        @list << { name: name, date: date }
    end

    def display
        # assume date looks like dd/mm/yyyy
        increment = 0
        day, month, year = @list[0][:date].split("/")
        @list.each do |person|
            puts "#{@list[increment][:name]}'s birthday is on the #{day} of #{@months[month.to_i]}, #{year}."
            increment += 1
        end
    end 
end 

birthday = BirthdayList.new 
birthday.add("Jon", "12/03/2322")
birthday.add("Steve", "22/12/1922")
birthday.add("Brian", "15/01/1995")


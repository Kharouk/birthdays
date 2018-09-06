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
        day, month, year = @list[0][:date].split("/")

        p "#{@list[0][:name]}'s birthday is on the #{day} of #{@months[month.to_i]}, #{year}"

    end 
end 

birthday = BirthdayList.new 
birthday.add("Jon", "12/03/2322")
birthday.display

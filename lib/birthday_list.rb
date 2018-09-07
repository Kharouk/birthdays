require 'date'


class BirthdayList
    
    attr_reader :list
    def initialize
        @months = Date::MONTHNAMES
        @list = []
        @date = ""
    end

    def add(bday_person)
        if bday_person.instance_of? Person
            @list << bday_person
            puts "#{bday_person.name}'s birthday is on the #{bday_person.date}."
        else
            puts "GIVE ME PEOPLE ONLY"
        end
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

class Person
    attr_reader :name, :date
    def initialize(name, date)
        @name = name
        @date = date
    end
end
require 'birthday_list'

RSpec.describe BirthdayList do
    # birthdays = BirthdayList.new
    # birthdays.add("Billy", "12/5/1770") 
    xit "Is able to add name and date" do
        expect(birthdays.list).to eq [ { name: "Billy", date: "12/5/1770" } ]
    end 

    xit "Is able to display stored names and dates, in a nice format" do
        expect(birthdays.display).to eq "Billy's birthday is on the 12 of May, 1770."
    end

    # birthdays_2 = BirthdayList.new
    # birthdays_2.add("Jonny", "3/11/2100")

    xit "Correctly displays the name and date using the nice format" do
        expect(birthdays_2.display).to eq "Jonny's birthday is on the 3 of November, 2100."
        skip
    end


    subject(:birthday_list) {described_class.new}

    
    it "correctly shows us the person instance" do 
        person = Person.new("Alex", "21/07/1990")
        expect { birthday_list.add(person) }.to output("#{person.name}'s birthday is on the #{person.date}.\n").to_stdout
    end   
end 

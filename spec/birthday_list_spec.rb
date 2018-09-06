require 'birthday_list'

describe BirthdayList do
    birthdays = BirthdayList.new
    birthdays.add("Billy", "12/5/1770") 
    it "Is able to add name and date" do
        expect(birthdays.list).to eq [ { name: "Billy", date: "12/5/1770" } ]
    end 

    it "Is able to display stored names and dates, in a nice format" do
        expect(birthdays.display).to eq "Billy's birthday is on the 12 of May, 1770."
    end

    birthdays_2 = BirthdayList.new
    birthdays_2.add("Jonny", "3/11/2100")
    it "Correctly displays the name and date using the nice format" do
        expect(birthdays_2.display).to eq "Jonny's birthday is on the 3 of November, 2100."
    end
end 

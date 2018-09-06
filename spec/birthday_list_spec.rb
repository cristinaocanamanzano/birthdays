require "birthday_list"

describe BirthdayList do
   it { is_expected.to respond_to(:add).with(2).arguments}
   it "stores birthdays in a list" do
     birthdays = BirthdayList.new
     expect(birthdays.add("David", "04/11/1979")).to eq [{name: "David", birthday: "04/11/1979"}]
   end
   it { is_expected.to respond_to(:print_list)}
end

require_relative '../lib/birthday_wizz'
require 'timecop'

describe BirthdayWizz do
  let(:list) {BirthdayWizz.new}
  
  it { is_expected.to respond_to :add }

  it 'should add a birthday' do
    expect(list.add("Alastair Sumner", "13 November 1985")).to eq [{name: "Alastair Sumner", date: "13 November 1985"}]
  end

  it 'should show a birthday' do
    list.add("Alastair Sumner", "13 November 1985")
    expect { list.show_birthday }.to output("Alastair Sumner: 13 November 1985\n").to_stdout
  end

  it 'should show all birthdays' do
    list.add("Alastair Sumner", "13 November 1985")
    list.add("Fay Pantry", "25 June 1991")
      expect { list.show_birthday }.to output("Alastair Sumner: 13 November 1985\nFay Pantry: 25 June 1991\n").to_stdout
  end

  it 'should check the list to see who\'s birthday is today' do
    Timecop.freeze(Time.parse('13 November 2019')) do
      
      list.add("Alastair Sumner", "13 November 1985")
      list.add("Diane Salisbury", "23 May 1961")
       expect { list.check_today }.to output("It's Alastair Sumner's birthday today! They are 34 years old\n").to_stdout
    end
  end
end
require_relative '../lib/birthday_wizz'

describe BirthdayWizz do
  let(:subject) {BirthdayWizz.new}
  
  it { is_expected.to respond_to :input_birthday }

  it 'should add a birthday' do
    expect(subject.input_birthday("Alastair Sumner", "13th November 1985")).to eq [{name: "Alastair Sumner", date: "13th November 1985"}]
  end

  it 'should show a birthday' do
    subject.input_birthday("Alastair Sumner", "13th November 1985")
    expect { subject.show_birthday }.to output("Alastair Sumner: 13th November 1985\n").to_stdout
  end

  it 'should show all birthdays' do
    subject.input_birthday("Alastair Sumner", "13th November 1985")
    subject.input_birthday("Fay Pantry", "25th June 1991")
      expect { subject.show_birthday }.to output("Alastair Sumner: 13th November 1985\nFay Pantry: 25th June 1991\n").to_stdout
  end

  it 'should check to see who\'s birthday is today' do

  end
end
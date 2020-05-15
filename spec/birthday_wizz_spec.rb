require_relative '../lib/birthday_wizz'

describe BirthdayWizz do
  let(:subject) {BirthdayWizz.new}
  
  it 'should respond to input_birthdays' do
    expect(subject).to respond_to :input_birthday
  end

  it 'should add a birthday' do
    expect(subject.input_birthday("Alastair Sumner", "13th November 1985")).to eq [{name: "Alastair Sumner", date: "13th November 1985"}]
  end

  it 'should show a birthday' do
    subject.input_birthday("Alastair Sumner", "13th November 1985")
    expect { subject.show_birthday }.to output("Alastair Sumner: 13th November 1985\n").to_stdout
  end

  it 'should show all birthdays' do
    list = BirthdayWizz.new
    list.input_birthday("Alastair Sumner", "13th November 1985")
    list.input_birthday("Fay Pantry", "25th June 1991")

    expect { list.show_birthday }.to output("Alastair Sumner: 13th November 1985\nFay Pantry: 25th June 1991\n").to_stdout
  end

end
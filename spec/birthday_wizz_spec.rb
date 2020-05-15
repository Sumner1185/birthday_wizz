require_relative '../lib/birthday_wizz'

describe BirthdayWizz do
  let(:subject) {BirthdayWizz.new}
  
  it 'should respond to input_birthdays' do
    expect(subject).to respond_to :input_birthdays
  end

  it 'should add a birthday' do
    expect(subject.input_birthdays("Alastair Sumner", "13th November 1985")).to eq [{name: "Alastair Sumner", date: "13th November 1985"}]
  end

end
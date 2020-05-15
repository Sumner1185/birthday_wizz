require_relative '../lib/birthday_wizz'

describe BirthdayWizz do
  let(:subject) {BirthdayWizz.new}
  
  it 'should respond to input_birthdays' do
    expect(subject).to respond_to :input_birthdays
  end

end
class BirthdayWizz

  def initialize
    @list = []
  end

  def input_birthdays(name, date)
    @list.push({name: name, date: date})
  end

end
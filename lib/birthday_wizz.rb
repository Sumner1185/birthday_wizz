class BirthdayWizz

  def initialize
    @list = []
  end

  def input_birthday(name, date)
    @list.push({name: name, date: date})
  end

  def show_birthday
    @list.each do |person|
      puts "#{person[:name]}: #{person[:date]}"
    end
  end

end
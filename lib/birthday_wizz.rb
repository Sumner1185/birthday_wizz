require 'date'

class BirthdayWizz
  FORMAT_DATE = '%m-%d'

  def initialize
    @list = []
  end

  def add(name, date)
    @list.push({name: name, date: date})
  end

  def show_birthday
    @list.each do |person|
      puts "#{person[:name]}: #{person[:date]}"
    end
  end

  def check_today
    @list.each do |bday|
      puts "It's #{bday[:name]}'s birthday today! They are #{age(bday)} years old" if today?(bday)
    end
  end

  def age(bday)
    Time.now.year - Date.parse(bday[:date]).year
  end

  def today?(bday)
    birthday_date(bday) == today
  end

  def birthday_date(bday)
    Date.parse(bday[:date]).strftime(FORMAT_DATE)
  end

  def today
    Time.now.strftime(FORMAT_DATE)
  end

end
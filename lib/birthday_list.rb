require 'date'

class BirthdayList
  attr_reader :list
  def initialize
    @list = []
  end

  def add(name, birthday)
    @list << {name: name, birthday: birthday }
  end

  def print_list
    @list.each { |birthday| puts "#{birthday[:name]}'s birthday is on #{birthday[:birthday]} " }
  end
  def birthday_today
    @list.each do |birthday|
      if birthday[:birthday].day == Date.today.day && birthday[:birthday].month == Date.today.month
        puts "It's #{birthday[:name]}'s birthday today!"
      end
    end
  end
end

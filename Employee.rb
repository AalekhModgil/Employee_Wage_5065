class Employee

  @@daily_wage = 20
  @@part_time_hours = 4
  @@full_time_hours = 8


  def initialize(type_of_work)
    @type_of_work = type_of_work
    @monthly_salary = 0
  end

  def daily_wage()
    if @type_of_work == 0
      return 0
    elsif @type_of_work == 1
      return @@part_time_hours * @@daily_wage
    elsif @type_of_work == 2
      return @@full_time_hours * @@daily_wage
    end
  end

  def monthly_wage()
    for i in 1..20
      rng = Random.new
      type = rng.rand(0..2)
      if type == 0
        @monthly_salary += 0
      elsif type == 1
        @monthly_salary += @@part_time_hours * @@daily_wage
      elsif type == 2
        @monthly_salary += @@full_time_hours * @@daily_wage
      end
    end
    return @monthly_salary
  end

end

rng = Random.new

type_of_work = rng.rand(0..2)

employee1 = Employee.new(type_of_work)

puts "Daily wage :-  #{employee1.daily_wage}"
puts "Monthly wage :- #{employee1.monthly_wage}"
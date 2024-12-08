class Employee
  @@wage_per_hour = 20
  @@part_time_hours = 4 
  @@full_time_hours = 8
  @@total_working_days = 20
  @@max_working_hours = 100


  def initialize
    @monthly_salary = 0
    @total_hours = 0
  end

  def status
    rng = Random.new
    number = rng.rand(0..1)
    if number == 0
      puts "Employee is absent"
    else
      puts "Employee is present"
    end
  end


  def cal_daily_wage
    rng = Random.new
    number = rng.rand(0..2)
    case number 
    when 0
      puts "Daily wage : $0"
    when 1 
      puts "Daily wage : $#{@@part_time_hours * @@wage_per_hour}"
    when 2
      puts "Daily wage : $#{@@full_time_hours * @@wage_per_hour}"
    end
  end


  def cal_monthly_wage
    rng = Random.new
    for i in 1..@@total_working_days
      if @total_hours >= @@max_working_hours
        break
      end
      number = rng.rand(0..2)
      case number
      when 0
        next
      when 1 
        hours = @@part_time_hours
      when 2
        hours = @@full_time_hours
      end

      if @total_hours + hours > @@max_working_hours
        hours = @@max_working_hours - @total_hours
      end

      @monthly_salary += hours * @@wage_per_hour
      @total_hours += hours
    end
    puts "(Monthly Wage : $#{@monthly_salary})  (Total Hours Worked : #{@total_hours})"
  end 
end

rng = Random.new
emp  = Employee.new

emp.status
emp.cal_daily_wage
emp.cal_monthly_wage



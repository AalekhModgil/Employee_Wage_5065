part_time_hours = 4
full_time_hours = 8
per_hour_wage = 20

# Randomly check it is no_time = 0 , part_time = 1 , full_time = 2

rng = Random.new
type_of_work = rng.rand(0..2)
work_hours = nil

if type_of_work == 0
    work_hours = 0
elsif type_of_work == 1
    work_hours = part_time_hours
elsif type_of_work == 2
    work_hours = full_time_hours
else
    work_hours = 0
end


daily_wage = work_hours*per_hour_wage

puts "Daily wage of an employee is :- #{daily_wage}"



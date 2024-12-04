part_time_hours = 4
full_time_hours = 8
per_hour_wage = 20
monthly_wage = 0

for i in 1..20
  rng = Random.new
  type_of_work = rng.rand(0..2)
  if type_of_work == 0
    monthly_wage += 0
  elsif type_of_work == 1
    monthly_wage += (part_time_hours*per_hour_wage)
  elsif type_of_work == 2
    monthly_wage += (full_time_hours*per_hour_wage)
  end
end

puts "Monthly wage of employee :- #{monthly_wage}"

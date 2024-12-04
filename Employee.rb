per_hour_wage = 20
part_time_hours = 4
full_time_hours = 8

rng = Random.new
work_type = rng.rand(0..2)

if work_type == 0
  puts "Daily wage :- #{0}"
elsif work_type == 1
  puts "Daily wage :- #{4*per_hour_wage}"
elsif work_type == 2
  puts "Daily Wage :- #{8*per_hour_wage}"
end



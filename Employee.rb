rng = Random.new
employee_status = rng.rand(0..1)

# employee_status = rand(0..1)

if employee_status == 0
  puts "Absent"
elsif employee_status == 1
  puts "Present"
end

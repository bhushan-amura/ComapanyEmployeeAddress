# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)
#


companies = [
  ["Amura","contact@amura.com","9876123456"],
  ["BMC","contact@bmc.com","9812873465"],
  ["EQ","contact@eq.com","8796124593"]
]

amura_employee = [
  ["bhushan","bhushan@amura.com",2016,"9720147456"],
  ["jayesh","jayesh@amura.com",2016,"3434343434"],
  ["akash","akash@amura.com",2016,"2121212121"],
  ["shubham","shubham@amura.com",2016,"5656565656"],
  ["amrut","amrut@amura.com",2016,"4242424242"]
]

companies.each do |company|
  Company.create!(name: company[0],email:company[1],phone:company[2])
end

amura_employee.each do |ae|
  Company.find_by_name("Amura").employees.create!(name:ae[0],email:ae[1],join_year:ae[2],phone:ae[3])
end

Company.find_by_name("Amura").create_address(area:"baner")
Company.find_by_name("BMC").create_address(area:"yerwada")
Company.find_by_name("EQ").create_address(area:"sbroad")


Employee.find_by_name("bhushan").create_address(area: "baner")
Employee.find_by_name("jayesh").create_address(area: "baner")
Employee.find_by_name("shubham").create_address(area: "baner")
Employee.find_by_name("akash").create_address(area: "katraj")
Employee.find_by_name("amrut").create_address(area: "pashan")

Employee.find_by_name("bhushan").create_salary_designation(salary:43000, designation:"dev")
Employee.find_by_name("jayesh").create_salary_designation(salary:48000, designation:"dev")
Employee.find_by_name("shubham").create_salary_designation(salary:50000, designation:"marketting")
Employee.find_by_name("akash").create_salary_designation(salary:53000, designation:"dev")
Employee.find_by_name("amrut").create_salary_designation(salary:43000, designation:"marketting")

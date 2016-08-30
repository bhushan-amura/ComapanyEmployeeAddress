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
  ["bhushan","bhushan@amura.com",2016,"9720147456",50000,"sell.do"],
  ["jayesh","jayesh@amura.com",2016,"3434343434",51000,"Sell.do"],
  ["akash","akash@amura.com",2016,"2121212121",50000,"Sell.do"],
  ["shubham","shubham@amura.com",2016,"5656565656",50000,"hub"],
  ["amrut","amrut@amura.com",2016,"4242424242",48000,"hub"]
]

companies.each do |company|
  Company.create!(name: company[0],email:company[1],phone:company[2])
end

amura_employee.each do |ae|
  Company.find_by_name("Amura").employees.create!(name:ae[0],email:ae[1],join_year:ae[2],phone:ae[3],salary:ae[4],designation:ae[5])

end

Company.find_by_name("Amura").create_address(area:"baner")
Company.find_by_name("BMC").create_address(area:"yerwada")
Company.find_by_name("EQ").create_address(area:"sbroad")


Employee.find_by_name("bhushan").create_address(area: "baner")
Employee.find_by_name("jayesh").create_address(area: "baner")
Employee.find_by_name("shubham").create_address(area: "baner")
Employee.find_by_name("akash").create_address(area: "katraj")
Employee.find_by_name("amrut").create_address(area: "pashan")


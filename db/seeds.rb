# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "---------------------Seeding Data----------------------------------------------"
str=File.read('employees_projects.csv')
employees=str.split("\n")[1..-1].map{|l| l.split(",")[0]}
projects=str.split("\n")[1..-1].map{|l| l.split(",")[1]};
projects.each{|pr| Project.create(:name=>pr)}
employees.each{|emp| Employee.create(:name=>emp)}
str.split("\n")[1..-1].each{|l|
  e,p=l.split(",");
  Employee.where(:name=>e).first.projects << Project.where(:name=>p).first
};


str=File.read('materials.csv')
projects=str.split("\n")[1..-1].map{|l| l.split(",")[0]}
materials=str.split("\n")[1..-1].map{|l| l.split(",")[1]}
projects.each{|pr| Project.create(:name=>pr)}
materials.each{|mat| Material.create(:name=>mat)}
str.split("\n")[1..-1].each{|l|
  p,m,a=l.split(",");
  MaterialsProject.create(project: Project.where(name: p).first,material: Material.where(name: m).first, amount: a)
};

puts "------------------End Seeding Data----------------------------------------------"




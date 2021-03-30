# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{firstName: 'albert', lastName: 'einstein', email: 'ae@relativity.com'}, 
			 {firstName: 'marie', lastName: 'curie', email: 'mc@radiation.com'}, 
			 {firstName: 'issac', lastName: 'newton', email: 'in@gravity.com'}, 
			 {firstName: 'galileo', lastName: 'galilei', email: 'gg@astronomy.com'}])

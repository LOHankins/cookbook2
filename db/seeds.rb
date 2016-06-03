# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ingredient.destroy_all
Stuff.destroy_all
Recipe.destroy_all
Person.destroy_all
User.destroy_all

User.create({
	login: "Louis",
	password: "password",
	})

User.create({ 
	login: "Jocelyn",
	password: "password",
	})

User.create({
	login: "Jordan",
	password: "password",
	})

User.create({
	login: "Toney",
	password: "password",
	})

	users = User.all

users.each do |user|
	case user.login
	when "Louis"
		Person.create({
			fname: "Louis",
			mname: "Oscar",
			lname: "Hankins",
			email: "LOHankins@gmail.com",
			user_id: user.id
			})
	
	when "Jocelyn"
		Person.create({
			fname: "Jocelyn",
			mname: "Renee",
			lname: "Everett",
			email: "Jocelyn.Hankins@gmail.com",
			user_id: user.id
			})
	
	when "Jordan"
		Person.create({
			fname: "Jordan",
			mname: "Dj",
			lname: "Hankins",
			email: "Jordan.D.Hankins@gmail.com",
			user_id: user.id
			})

	when "Toney"
		Person.create({
			fname: "Louis",
			mname: "Toney",
			lname: "Hankins",
			email: "Louis.T.Hankins@gmail.com",
			user_id: user.id
			})
	end

end; 

people = Person.all

people.each do |person|
	case person.mname
	when "Toney"
		Recipe.create({
			name: "Meatloaf",
			prep: "30 minutes",
			cook: "45 minutes",
			description: "Meatloaf",
			instructions: "Hamburger and spices",
			person_id: person.id
			})

	when "Oscar"
		Recipe.create({ 
			name: "French Toast",
			prep: "5 minutes",
			cook: "12 minutes",
			description: "French Toast",
			instructions: "Good breakfast",
			person_id: person.id
			})

		Recipe.create({
			name: "Omelet",
			prep: "25 minutes",
			cook: "5 minutes",
			description: "Omelet with stuffing",
			instructions: "Very Good breakfast",
			person_id: person.id
			})
	end
end;









# var Recipes = [{
#    name: "Daddy's Pancakes",
#    by: "",
#    prep: "10 minutes",
#    cook: "20 minutes",
#    description: "Light fluffy pancakes",
#    instructions: "Ipadr klh iraiohga alihga abfeuug",
#    ingredients: [{
#    	amount: 1.5,
#    	unit: "cups",
#    	name: "flour"
#    },
#    {
#    	amount: 1,
#    	unit: "tablespoon",
#    	name: "sugar"
#    },
#    {
#    	amount: 2,
#    	unit: "teaspoon",
#    	name: "Baking Powder"
#    },
#    {
#    	amount: 0.25,
#    	unit: "teaspoon",
#    	name: "salt"
#    },
#    {
#    	amount: 1,
#    	unit: "",
#    	name: "egg"
#    },
#    {
#    	amount: 2,
#    	unit: "cups",
#    	name: "skim milk"
#    }]
# },
# {
#    name: "Mommys Pancakes",
#    by: "",
#    prep: "1 minutes",
#    cook: "5 minutes",
#    description: "Light fluffy pancakes",
#    instructions: "Ipadr klh iraiohga alihga abfeuug",
#    ingredients: [{
#     amount: 1.5,
#     unit: "cups",
#     name: "flour"
#    },
#    {
#     amount: 1,
#     unit: "tablespoon",
#     name: "sugar"
#    },
#    {
#     amount: 2,
#     unit: "teaspoon",
#     name: "Baking Powder"
#    },
#    {
#     amount: 0.25,
#     unit: "teaspoon",
#     name: "salt"
#    },
#    {
#     amount: 1,
#     unit: "",
#     name: "egg"
#    },
#    {
#     amount: 2,
#     unit: "cups",
#     name: "skim milk"
#    }]
# }];
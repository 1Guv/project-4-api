[User,Plate].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{model.table_name} RESTART IDENTITY CASCADE")
end





u1 = User.create!(username: "guv", first_name: "Guv", last_name: "Singh", email: "Guv@apnaplates.com", password: "password", password_confirmation: "password")
u2 = User.create!(username: "mike", first_name: "Mike", last_name: "Hayden", email: "Mike.Hayden@gmail.com", password: "password", password_confirmation: "password")
u3 = User.create!(username: "james", first_name: "James", last_name: "Carrodano", email: "James@gmail.com", password: "password", password_confirmation: "password")
u4 = User.create!(username: "mark", first_name: "Mark", last_name: "Sherrington", email: "Mark@gmail.com", password: "password", password_confirmation: "password")

p1 = u1.plates.create!(plate: "1 6UV", meaning: "1 GUV", sell_price: 50000, expiry_date: Date.new(2017,04,27), reserve: "1000", status: "live", start_date: Date.new(2017,04,16))
p2 = u2.plates.create!(plate: "M1 KES", meaning: "MIKES", sell_price: 10000, expiry_date: Date.new(2017,04,28), reserve: "1500", status: "pending", start_date: Date.new(2017,04,17))
p3 = u3.plates.create!(plate: "J4 MES", meaning: "JAMES", sell_price: 25000, expiry_date: Date.new(2017,04,28), reserve: "2300", status: "sold", start_date: Date.new(2017,04,17))
p4 = u4.plates.create!(plate: "M4 RKS", meaning: "MARKS", sell_price: 15000, expiry_date: Date.new(2017,04,28), reserve: "800", status: "live", start_date: Date.new(2017,04,16))
p5 = u1.plates.create!(plate: "6 54NDU", meaning: "SANDHU", sell_price: 25000, expiry_date: Date.new(2017,04,28), reserve: "500", status: "pending", start_date: Date.new(2017,04,16))
p6 = u4.plates.create!(plate: "WA11KER", meaning: "WALKER", sell_price: 25000, expiry_date: Date.new(2017,04,28), reserve: "999", status: "live", start_date: Date.new(2017,04,16))
p6 = u2.plates.create!(plate: "JQ11ERY", meaning: "JQUERY", sell_price: 10000, expiry_date: Date.new(2017,04,28), reserve: "1100", status: "live", start_date: Date.new(2017,04,16))

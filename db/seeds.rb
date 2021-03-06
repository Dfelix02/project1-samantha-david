User.destroy_all
Flight.destroy_all
Reservation.destroy_all
Destination.destroy_all
User.reset_pk_sequence
Flight.reset_pk_sequence
Reservation.reset_pk_sequence
Destination.reset_pk_sequence

#Users

sam = User.create(name: "Samantha Balgobin", user_name: "sbalgobin", password: "password", cc_info: "123456")
david = User.create(name: "David Felix", user_name: "dfelix", password: "password", cc_info: "1234567")
josh = User.create(name: "Joshua Itwaru", user_name: "jitwaru", password: "password", cc_info: "12345678")

#Destinations

dubai = Destination.create(city: "Dubai", country: "United Arab Emirates", airport: "DXB - Dubai International Airport")
hong_kong = Destination.create(city: "Hong Kong", country: "China", airport: "HKG - Hong Kong International Airport")
bangkok = Destination.create(city: "Bangkok", country: "Thailand", airport: "BKK - Suvarnabhumi Airport")
rome = Destination.create(city: "Rome", country: "Italy", airport: "FCO - Fiumicino International Airport")
tokyo = Destination.create(city: "Tokyo", country: "Japan", airport: "NRT - Narita International Airport")
sydney = Destination.create(city: "Sydney", country: "Australia", airport: "SYD - Kingford Smith Airport")



#Flights

to_dubai = Flight.create(date: "2020-08-21", destination_id: dubai.id, departing_time: "2:20 PM", arrival_time: "11:37 PM", price: 450.07)
to_dubai2 = Flight.create(date: "2020-08-21", destination_id: dubai.id, departing_time: "4:22 AM", arrival_time: "9:46 PM", price: 522.01)
to_hong_kong = Flight.create(date: "2020-08-21", destination_id: hong_kong.id, departing_time: "8:00 AM", arrival_time: "10:20 PM", price: 257.02)
to_bangkok = Flight.create(date: "2020-08-21", destination_id: bangkok.id, departing_time: "3:15 PM", arrival_time: "08:17 AM", price: 301.00)
to_rome = Flight.create(date: "2020-08-21", destination_id: rome.id, departing_time: "6:30 AM", arrival_time: "7:27 PM", price: 281.23)
to_tokyo = Flight.create(date: "2021-08-21", destination_id: tokyo.id, departing_time: "7:05 AM", arrival_time: "2:26 AM", price: 327.29)
to_sydney = Flight.create(date: "2020-08-21", destination_id: sydney.id, departing_time: "12:30 PM", arrival_time: "9:45 PM", price: 209.98)

#Reservations

sam_reservation = Reservation.create(user_id: sam.id, flight_id: to_rome.id)
david_reservation = Reservation.create(user_id: david.id, flight_id: to_dubai.id)
josh_reservation = Reservation.create(user_id: josh.id, flight_id: to_bangkok.id)
sam_reservation2 = Reservation.create(user_id: sam.id, flight_id: to_tokyo.id)


puts "Done Seeding! 🔥 🔥 🔥 🔥 "
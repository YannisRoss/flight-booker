# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Flight.destroy_all
Airport.destroy_all

Airport.create!([{
    name: "LAX"},
{
    name: "ATH"},
{
    name: "MAD"},
{
    name: "KRK"},
{
    name: "MDL"},
{
    name: "BOB"},
{
    name: "ESL"},
{
    name: "RKV"}




])

p "created #{Airport.all.size} airports"

Flight.create!([{

    flight_date: "2021-12-21", 
    departure_time: nil, 
    arrival_time: nil, 
    departure_airport_id: 1, 
    destination_airport_id: 3




},
{

    flight_date: "2021-12-25", 
    departure_time: nil, 
    arrival_time: nil, 
    departure_airport_id: 2, 
    destination_airport_id: 3




},

{

    flight_date: "2021-11-11", 
    departure_time: nil, 
    arrival_time: nil, 
    departure_airport_id: 3, 
    destination_airport_id: 2




},{

    flight_date: "2021-10-11", 
    departure_time: nil, 
    arrival_time: nil, 
    departure_airport_id: 1, 
    destination_airport_id: 3




},{

    flight_date: "2021-12-21", 
    departure_time: nil, 
    arrival_time: nil, 
    departure_airport_id: 1, 
    destination_airport_id: 3




},{

    flight_date: "2021-09-01", 
    departure_time: nil, 
    arrival_time: nil, 
    departure_airport_id: 4, 
    destination_airport_id: 3




},{

    flight_date: "2021-12-22", 
    departure_time: nil, 
    arrival_time: nil, 
    departure_airport_id: 2, 
    destination_airport_id: 1




},{

    flight_date: "2021-12-20", 
    departure_time: nil, 
    arrival_time: nil, 
    departure_airport_id: 1, 
    destination_airport_id: 3




}





])

p "created #{Flight.all.size} flights"
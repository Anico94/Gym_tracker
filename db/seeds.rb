# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create(:email =>'alex@ga.com',  :name =>'Alex', :height => 192, :weight =>80, :password => 'chicken', :admin => true)
u2 = User.create(:email =>'tom@ga.com',  :name =>'Tom', :height => 176, :weight =>60, :password => 'chicken')
u3 = User.create(:email =>'jack@ga.com',  :name =>'Jack', :height => 161, :weight =>104, :password => 'chicken')
u4 = User.create(:email =>'zoe@ga.com',  :name =>'Zoe', :height => 178, :weight =>74, :password => 'chicken')
u5 = User.create(:email =>'rosie@ga.com',  :name =>'Rosie', :height => 161, :weight =>95, :password => 'chicken')
u6 = User.create(:email =>'lucy@ga.com',  :name =>'Lucy', :height => 194, :weight =>92, :password => 'chicken')
u7 = User.create(:email =>'john@ga.com',  :name =>'John', :height => 163, :weight =>84, :password => 'chicken')
u8 = User.create(:email =>'peter@ga.com',  :name =>'Peter', :height => 151, :weight =>64, :password => 'chicken')
u9 = User.create(:email =>'sara@ga.com',  :name =>'Sara', :height => 207, :weight =>100, :password => 'chicken')
u10 = User.create(:email =>'angela@ga.com',  :name =>'Angela', :height => 181, :weight =>51, :password => 'chicken')
u11 = User.create(:email =>'rory@ga.com',  :name =>'Rory', :height => 206, :weight =>105, :password => 'chicken')

puts "#{User.count} Users Created"


Workout.destroy_all

w1 = Workout.create(:date => "2020-10-08", :focus => 'Arms', :duration => 1)
w2 = Workout.create(:date => "2020-10-11", :focus => 'Back', :duration => 1.5)
w3 = Workout.create(:date => "2020-10-15", :focus => 'Chest', :duration => 1)
w4 = Workout.create(:date => "2020-10-16", :focus => 'Running', :duration => 0.5)
w5 = Workout.create(:date => "2020-10-20", :focus => 'Legs', :duration => 1.5)
w6 = Workout.create(:date => "2020-10-08", :focus => 'Arms', :duration => 1)
w7 = Workout.create(:date => "2020-10-11", :focus => 'Back', :duration => 1.5)
w8 = Workout.create(:date => "2020-10-15", :focus => 'Chest', :duration => 1)
w9 = Workout.create(:date => "2020-10-16", :focus => 'Running', :duration => 1)
w10 = Workout.create(:date => "2020-10-20", :focus => 'Legs', :duration => 1.5)

puts "#{Workout.count} Workouts Created"

Exercise.destroy_all

# e1 = Exercise.create(:name => 'Bench Press', :weight => '', :repetitions => '', :sets => '', :distance => '', :duration => '')
e1 = Exercise.create(:name => 'Bench Press', :weight => 50, :repetitions => 6, :sets => 3)
e2 = Exercise.create(:name => 'Bench Press', :weight => 100, :repetitions => 1)
e3 = Exercise.create(:name => 'Bench Press', :weight => 75, :repetitions => 4, :sets => 3)
e4 = Exercise.create(:name => 'Bench Press', :weight => 120, :repetitions => 1)
e5 = Exercise.create(:name => 'Push Ups', :weight => '', :repetitions => 50)
e6 = Exercise.create(:name => 'Push Ups', :weight => '', :repetitions => 50, :sets => 2)

e7 = Exercise.create(:name => 'Squats', :weight => 100, :repetitions => 1)
e8 = Exercise.create(:name => 'Squats', :weight => 80, :repetitions => 5, :sets => 3)
e9 = Exercise.create(:name => 'Squats', :weight => 90, :repetitions => 3, :sets => 2)

e10 = Exercise.create(:name => '3km Run', :distance => 3, :duration => 12.5)
e11 = Exercise.create(:name => '3km Run', :distance => 3, :duration => 12.5)
e12 = Exercise.create(:name => '5km Run', :distance => 5, :duration => 23.5)
e13 = Exercise.create(:name => '5km Run', :distance => 5, :duration => 26)

puts "#{Exercise.count} Exercises Created"

#Add workout to user profiles
u1.workouts << w1 << w2 << w3 << w6 << w7 << w8
u2.workouts << w5 << w10
u3.workouts << w4 << w9


#Add exercises to workouts
w3.exercises << e1 << e2 << e5
w8.exercises << e3 << e4 << e6

w4.exercises << e10 << e12
w4.exercises << e11 << e13

w5.exercises << e7 << e8
w10.exercises << e9








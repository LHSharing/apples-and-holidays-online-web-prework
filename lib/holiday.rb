require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each {|key,value| value << supply}
end

=begin
  # holiday_hash is identical to the one above

  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
=end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
 
  # code here
  #{:holiday_name => [supply_array]}
# holiday_hash.each {|key,value| value << {::holiday_name}}
  #=> ["Supply 1", "Supply 2"]}}
  #binding.pry
  #value => new_holiday(supplies) }
  # remember to return the updated hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
#binding.pry

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
holiday_hash.collect do |season,holidays| 
puts "#{season.to_s.capitalize}:"
holidays.collect do |holiday,supplies| 
holiday_name = holiday.to_s.split("_").map do |word|
  word.capitalize! 
end.join(" ")
puts "  #{holiday_name}: #{supplies.join(", ")}"
end
#"#{value.to_s.capitalize}:"
end
#: {#value.to_s.!capitalize}"

#holiday_hash.collect {|key,value| key.to_s.capitalize + value.to_s.capitalize}
end

def all_holidays_with_bbq(holiday_hash)
#array = []
holiday_hash.collect do |season, holidays|
#binding.pry
  holidays.select do |holiday,supplies|
  supplies.include?("BBQ")
  #holidays 
    end.keys
end.flatten
end
#holiday_hash gives you a season and its holidays
  #you want to loop over the holidays
  #   in the loop you check if the supplies for this holiday include "BBQ"
  #       if so, you wanna "collect" that holiday

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
require_relative 'methods/and_splitter'
require_relative 'methods/give_me_some'
require_relative 'methods/assign_tas_to_rooms'

number_of_rooms = 0
while number_of_rooms.zero?
  puts 'how many rooms?'
  number_of_rooms = gets.chomp.to_i
end

puts 'What are the goals for today?'
goals = give_me_some('Goal')
tas = give_me_some('TA')

rooms_per_ta = number_of_rooms / tas.length
counter = 1

result = assign_tas_to_rooms(tas, rooms_per_ta)


puts %(
  :party-deploy: Let's split the party! @aqui :gandalf_party:
  Let's go around the tables when you have a break from tickets.

  #{'The goal is to give all kinds of support and:' unless goals.empty?}
  #{goals.join("\n  ")}

  Rooms:
  #{
    result.map do |ta, rooms|
      "#{ta} -> #{and_splitter(rooms)}"
    end.join("\n  ")
  }

  I'll personally check the ones on the bottom
  Please report your takeaways here after you do it
)

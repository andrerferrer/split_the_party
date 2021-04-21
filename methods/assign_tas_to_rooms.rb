def assign_tas_to_rooms(tas, rooms_per_ta)
  result = {}
  
  tas = tas.shuffle
  tas.each do |ta|
    result[ta] = []

    rooms_per_ta.times do |_x|
      result[ta] << "Room #{counter}"
      counter += 1
    end
  end
end
def exact_division?(number)
  number == number.to_i
end

def assign_tas_to_rooms(tas, rooms_per_ta, counter)
  result = {}
  
  tas = tas.shuffle
  tas.each do |ta|
    result[ta] = []

    rooms_per_ta.floor.times do |_x|
      result[ta] << "Room #{counter}"
      counter += 1
    end

    # add one extra room to the last TA if the division is inexact
    result[ta] << "Room #{counter}" if !exact_division?(rooms_per_ta) && tas.last == ta
  end

  result
end
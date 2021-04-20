def give_me_some(something_name)
  result = []
  puts "give me a #{something_name} or press Enter to finish"
  something = gets.chomp
  until something == ''
    result << something
    puts "give me a #{something_name} or press Enter to finish"
    something = gets.chomp
  end
  result
end
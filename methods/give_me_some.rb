def give_me_some(something_name, options = {})
  result = []
  if options[:multiple]
    puts "give me multiple #{something_name} comma separated"
    return gets.chomp.gsub(/['"]/, '').split(',')
  else
    puts "give me a #{something_name} or press Enter to finish"
  end
  something = gets.chomp
  until something == ''
    result << something
    puts "give me a #{something_name} or press Enter to finish"
    something = gets.chomp
  end
  result
end

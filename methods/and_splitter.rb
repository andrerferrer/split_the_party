def and_splitter(array)
  return array.first if array.length == 1

  last_element = array.pop

  elements_comma_separated = array.join(', ')
  "#{elements_comma_separated} and #{last_element}"
end

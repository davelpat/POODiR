# Converts a string to the appropriate number type
CAPTURE_NUMBER = Transform /^(\d+|\d+\.\d+)$/ do |number|
  number.include?('.') ? number.to_f : number.to_i
end

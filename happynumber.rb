def happy_number?(n, loop_control=[])

return true if n == 1

happy_array = n.to_s.chars.map(&:to_i)
square = happy_array.collect { |x| x**2}
sum = square.inject(:+)

if loop_control.include?(sum)
  return false
 else
  loop_control << sum
  happy_number?(sum, loop_control)
 end
end
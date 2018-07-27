a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

b = a.map {|a| a+1}
puts 'Punto 1',b

c = a.map {|a| a.to_f}
puts 'Punto 2',c

d = a.map {|a| a.to_s}
puts 'Punto 3',d

e = a.reject { |a| a<5 }
puts 'Punto 4', e

f = a.select { |a| a<=5 }
puts 'Punto 5', f

g = a.inject { |suma, a| suma+a }
puts 'Punto 6', g

h = a.group_by { |a| a.even? }
puts 'Punto 7', h

i = a.group_by { |a| a>6 }
puts 'Punto 8', i
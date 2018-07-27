nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

a= nombres.select {|a| a.length>5}
puts 'Punto 1a', a

b= nombres.map {|a| a.downcase}
puts 'Punto 1b', b

c= nombres.select {|a| a[0]=='P'}
puts 'Punto 1c', c

d= nombres.map {|a| a.gsub(/[aeiouAEIOU]/, 'a'=>4, 'e'=>3, 'i'=>1, 'o'=>'0', 'u'=>'√', 'A'=>4, 'E'=>3, 'I'=>1, 'O'=>'0', 'U'=>'√')}
puts 'Punto 1d', d


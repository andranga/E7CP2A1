curso = []
edades={}
comunas={}
sexos={}
comunas_unique=[]
suma_edad=[]

opcion=0
while opcion != 10
	puts '1. Agregar una persona'
	puts '2. Editar una persona'
	puts '3. Eliminar una persona'
	puts '4. Ver total de personas'
	puts '5. Ver comunas'
	puts '6. Ver personas entre 20 y 25 años'
	puts '7. Ver suma de edades'
	puts '8. Ver promedio de edades'
	puts '9. Ver personas por generos'
	puts '10. Salir'
	opcion = gets.chomp.to_i
	if opcion == 1
		puts 'Ingrese nombre nueva persona:'
		nombre=gets.chomp
		curso.push(nombre)
		puts 'Ingrese edad nueva persona:'
		edad = gets.chomp.to_i
		edades.merge!({nombre => edad})
		puts 'Ingrese comuna nueva persona:'
		comuna = gets.chomp
		comunas.merge!({nombre => comuna})
		puts 'Ingrese sexo nueva persona:'
		sexo = gets.chomp
		sexos.merge!({nombre => sexo})
		puts curso, edades, comunas, sexos
	elsif opcion == 3
		puts 'Ingrese nombre persona eliminar:'
		finado = gets.chomp
		curso.delete(finado)
		edades.delete(finado)
		comunas.delete(finado)
		sexo.delete(finado)
	elsif opcion == 2
		puts 'Ingrese nombre persona a actualizar:'
		persona = gets.chomp
		puts 'Ingrese nueva edad:'
		edad = gets.chomp.to_i
		edades[persona]=edad
		puts 'Ingrese nueva comuna:'
		comuna = gets.chomp
		comunas[persona]=comuna
		puts 'Ingrese nuevo sexo:'
		sexo = gets.chomp
		sexos[persona]=sexo
	elsif opcion == 4
		puts curso.size
	elsif opcion == 5
		temp=comunas.group_by {|e,f| f.downcase}
		temp.each {|a,b| comunas_unique.push(a)}
		puts comunas_unique
	elsif opcion == 6
		min20max25=edades.select {|e,f| f>19 and f<26}
		puts min20max25
	elsif opcion == 7
		suma_edad=[]
		edades.each { |a,b| suma_edad.push(b) }
		sum_tot=suma_edad.inject {|suma, a| suma+a}
		puts sum_tot
	elsif opcion == 8
		suma_edad=[]
		edades.each { |a,b| suma_edad.push(b) }
		sum_tot=suma_edad.inject {|suma, a| suma+a}
		puts sum_tot/curso.size
	elsif opcion == 9
		aux=sexos.group_by {|e,f| f}
		puts 'Mujeres'
		aux.each {|a,b| 
			b.each {|x,y| puts x} if a=='f'
			}
		puts 'Hombres'
		aux.each {|a,b| 
			b.each {|x,y| puts x} if a=='m'
			}
	end
end
#Создаем класс стран

class Country
	attr_reader :name, :airports
	def initialize
@name = name
@airports =  []
	end


def add_airport (airport)
		@airports << airport
	end
end


#Создаем класс аэропортов
class Airport

	#задаем свойства класса (атрибуты)
	attr_reader :name, :planes

	#инициализируем переменные
	def initialize (name)
		@name = name
		@planes = []
	end
	#иметод добавления самолетов в массив

	def add_plane (plane)
		@planes << plane
	end
end

#Создаем класс самолетов

class Plane
	attr_reader :model
	
	def initialize (model)
		@model = model
	end
end



# Создаем страну
country1 = Country.new('Russia')

# Создаем аэропорты
airports = []
airport1 = Airport.new('Pulkovo')
airport2 = Airport.new('Sheremetievo')
#добавляем аэропорты в массив
airports << airport1
airports << airport2
#добавляем аэропорты в страну

country1.add_airport airports
# создаем самолеты для 1 аэропорта
plane1 = Plane.new('Boeng-777')
plane2 = Plane.new('Airbus-320')
plane3 = Plane.new('Boeng-747')
 #добавляем самолеты в 1 аэропорт
airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3
# создаем самолеты для 2 аэропорта

plane4 = Plane.new('MIG-29')
plane5 = Plane.new('TU-154')
plane6 = Plane.new('IL-86')
 #добавляем самолеты во 2 аэропорт

airport2.add_plane plane4
airport2.add_plane plane5
airport2.add_plane plane6

#Цикл1. Проходимся по масссиву airports
airports.each do |airport|
	puts "__________________________"

	#для каждого аэропорта выводим название аэропорта
	puts "Airport #{airport.name} in #{country.name}"

		# внутри цикла1 проходимся по массиву planes для каждого аэропорта
		airport.planes.each do |plane|
			puts "Plane: #{plane.model}"
		end
puts "__________________________"
end

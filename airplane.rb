class Airplane
	attr_reader :model
	attr_reader :altitude
	attr_reader :speed


	def initialize (model)
		@model = model
		@speed = 0
		@altitude = 0
	end

	def fly
		@speed = 800 
		@altitude = 10000

	end

	def land

		@speed = 0
		@altitude = 0

	end
def moving?
	return @speed > 0 
	
end

end
plane1 = Airplane.new('Boeng-777')
puts "Model: #{plane1.model}, speed: #{plane1.speed}, altitude: #{plane1.altitude}"
puts "Moving? #{plane1.moving?}"
plane1.fly
puts "Model: #{plane1.model}, speed: #{plane1.speed}, altitude: #{plane1.altitude}"
puts "Moving? #{plane1.moving?}"
plane1.land
puts "Model: #{plane1.model}, speed: #{plane1.speed}, altitude: #{plane1.altitude}"
puts "Moving? #{plane1.moving?}"
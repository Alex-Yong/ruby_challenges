#class vehicle
class Vehicle
  def initialize(year)
    @year = year
    @lights = "off"
    @signal = "off"
  end

  def year
    @year
  end

  def lights(on)
    if on == "on"
      puts "on"
      @lights = "on"
    else
      puts "off"
      @lights = "off"
    end
  end

  def signals(left_right)
    if left_right == "left"
      puts "left"
      @signal = "left"
    elsif left_right == "right"
      puts "right"
      @signal = "right"
    else
      puts "off"
      @signal = "off"
    end
  end

  def light_status
    puts "lights are: " + @lights
    puts "turn signal status is: " + @signal
  end

end


#initialize the car to have 4 wheels, then create method to return numbers of wheels
class Car < Vehicle
  def initialize(year)
    super year
    @wheels = 4
    @speed = 0
  end

  def wheels
    @wheels
  end

  def speed
    @speed
  end

  def accelerate(speed_up)
    @speed = speed + speed_up
  end

  def brake(slow_down)
      @speed = speed - slow_down
    if speed < 0
      @speed = 0
    else
      @speed
    end
  end

end

#Tesla car
class Tesla < Car
  def initialize(year)
    super year
  end

  def t_accel
    speed_up = 10
    accelerate(speed_up)
  end

  def t_brake
    slow_down = 7
    brake(slow_down)
  end

  def wheels
    @wheels
  end

end

#Tata car
class Tata < Car
  def initialize(year)
    super year
  end

  def ta_accel
    speed_up = 2
    accelerate(speed_up)
  end

  def t_brake
    slow_down = 1.25
    brake(slow_down)
  end

  def wheels
    @wheels
  end
end

#Toyota car
class Toyota < Car
  def initialize(year)
    super year
  end

  def to_accel
    speed_up = 7
    accelerate(speed_up)
  end

  def to_brake
    slow_down = 5
    brake(slow_down)
  end

  def wheels
    @wheels
  end
end









>> my_cars.sort_by
=> #<Enumerator: [#<Tesla:0x007fbea1a85888 @year=2016, @lights="off", @signal="off", @wheels=4, @speed=0>, #<Tesla:0x007fbea1a46020 @year=2015, @lights="off", @signal="off", @wheels=4, @speed=0>, #<Tata:0x007fbea28006e8 @year=2014, @lights="off", @signal="off", @wheels=4, @speed=0>, #<Tata:0x007fbea19d58e8 @year=2013, @lights="off", @signal="off", @wheels=4, @speed=0>, #<Toyota:0x007fbea198f938 @year=2012, @lights="off", @signal="off", @wheels=4, @speed=0>, #<Toyota:0x007fbea1946800 @year=2011, @lights="off", @signal="off", @wheels=4, @speed=0>]:sort_by>
>>


my_cars.sort {|x,y| x.class.to_s <=> y.class.to_s}
my_cars.sort {|x,y| x.year <=> y.year}


my_cars.sort {|x,y| [x.class.to_s, x.year]<=>[y.class.to_s, y.year]}

class Car
  PASSENGER_LIMIT_DEFAULT = 4
  TOP_SPEED_DEFAULT = 120

  attr_reader :speed, :passengers, :engine_on

  def initialize(config)
    @top_speed = config[:top_speed] || TOP_SPEED_DEFAULT # takes top speed from config or sets default
    @passenger_limit = config[:passenger_limit] || PASSENGER_LIMIT_DEFAULT # takes max passenger capacity from config or sets default
    @speed = 0 #sets initial speed as 0 by default
    @engine_on = false #sets engine off by default
    @passengers = [] #sets no passenger by default
  end

  # checks Object person#age is over 18
  # defines the driver instance variable as a person Object
  def driver=(person)
    fail 'Driver Age Error' unless person.age > 18

    @driver = person
  end

  # checks driver instance variable exists [REPEATED]
  # returns string of driver#first_name driver#last_name
  def driver_name
    fail 'No Driver Error' if driver.nil?

    "#{driver.first_name} #{driver.last_name}"
  end

  # checks driver instance variable exists [REPEATED]
  # sets engine_on to true
  def turn_on_engine
    fail 'No Driver Error' if driver.nil?

    @engine_on = true
  end


  # checks driver instance variable exists [REPEATED]
  # sets engine_on to false
  def turn_off_engine
    fail 'No Driver Error' if driver.nil?

    @engine_on = false
  end

  # checks engine is on [REAPTED]
  # increases speed by increment value for each second
  # breaks if reaches top speed
  def accelerate(increment, seconds)
    fail 'Engine Off Error' unless engine_on

    seconds.times do
      break if speed >= top_speed
      @speed += increment
    end
  end

  # checks engine is on [REAPTED]
  # decreases speed by 1 for each second
  # breaks if drops to value of 1 or less
  def brake(seconds)
    fail 'Engine Off Error' unless engine_on

    seconds.times do
      break if speed <= 1
      @speed -= 1
    end
  end

  # checks there is capacity for added passenger
  # adds passenger to passenger array
  def add(passenger)
    fail 'Limit Reached Error' if passengers.count >= passenger_limit

    @passengers << passenger
  end

  private

  attr_reader :passenger_limit, :top_speed, :driver
end

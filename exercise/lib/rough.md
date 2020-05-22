Groupings

#driver
def driver=(person)
def driver_name
:driver ## in private

#engine
def turn_on_engine
def turn_off_engine
:engine_on ## public


#speed
def accelerate(increment, seconds)
def brake(seconds)
:speed ## public
:top_speed ## private

#passengers
def add(passenger)
:passengers ## public
:passenger_limit ## private

==========

Data Stored/Changed

#driver
@driver = person ## in driver=(person)

#engine
@engine_on = false ## in initialize
@engine_on = true ## in turn_on_engine
@engine_on = false ## in turn_off_engine

#speed
@top_speed = config[:top_speed] || TOP_SPEED_DEFAULT ## in initialize
@speed = 0 ## in initialize
@speed += increment ## in accelerate
@speed -= 1 ## in brake

#passengers
@passengers = [] ## in initialize
@passengers << passenger ## in add(passenger)

============

The car class knows about the names and ages of the passengers in the car, the name and age of the driver of the car, the current speed of the car and whether or not the engine is on.

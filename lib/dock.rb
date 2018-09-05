class Dock
  attr_reader :name,
              :max_rental_time

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @dock_hours = 0
  end

  def rent(boat, renter)

  end

  def return(boat)
  end

  def log_hour
    @dock_hours += 1
  end

  def revenue
    @dock_hours
  end
end

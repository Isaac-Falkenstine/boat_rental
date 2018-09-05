class Dock
  attr_reader :name,
              :max_rental_time

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @total_rev = 0
    @rented_boats = []
  end

  def rent(boat, renter)
    @rented_boats <<  boat
  end

  def return(boat)
    @rented_boats.delete(boat)
  end

  def log_hour
    dock_hours = 0
    dock_hours += 1
    @rented_boats.each do |boat|
      @total_rev += boat.price_per_hour
    end
  end

  def revenue
    @total_rev
  end
end

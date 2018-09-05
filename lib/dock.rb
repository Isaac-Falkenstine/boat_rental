class Dock
  attr_reader :name,
              :max_rental_time

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @total_rev = 0
    @rented_boats = []
    @renter_array = []
    @cards_charged = {}
  end

  def rent(boat, renter)
    @renter_array << renter
    @rented_boats <<  boat
  end

  def return(boat)
    @rented_boats.delete(boat)
  end

  def log_hour
    @rented_boats.each do |boat|
      boat.add_hour
      if boat.hours_rented <= self.max_rental_time
        @total_rev += boat.price_per_hour
        @renter_array.each do |renter|
          card_total = @total_rev
          @cards_charged[renter.credit_card_number] = card_total
          card_total = @total_rev - card_total
        end
      end
    end
  end

  def revenue
    @total_rev
  end

  def charges
    @cards_charged
  end
end

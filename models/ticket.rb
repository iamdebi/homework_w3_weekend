class Ticket

  attr_reader :id, :cust_id, :film_id

  def initialize(details)
    @id = details['id'] if details ['id']
    @cust_id = details['cust_id']
    @film_id = details['film_id']
  end

end

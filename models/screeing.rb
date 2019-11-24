class Screening

  attr_reader :id, :film_id, :ticket_id
  attr_accessor :show_time, :availability

  def initialize(details)
    @id = details['id'] if details['id']
    @show_time = details['show_time']
    @availability = details['availability']
    @film_id = details['film_id']
    @ticket_id = details['ticket_id']
  end

end

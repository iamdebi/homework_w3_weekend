class Screening

  attr_reader :id, :film_id, :ticket_id, :cust_id
  attr_accessor :show_time, :availability

  def initialize(details)
    @id = details['id'] if details['id']
    @show_time = details['show_time']
    @availability = details['availability']
    @film_id = details['film_id']
  end

  def save()
    sql = "INSERT INTO screenings
    (show_time, availability, film_id)
    VALUES ($1, $2, $3) RETURNING id;"
    values = [@show_time, @availability, @film_id]
    results = SqlRunner.run(sql, values)
    return results.map{|result| Screening.new(result)}
  end

end

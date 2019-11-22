class Ticket

  attr_reader :id, :cust_id, :film_id

  def initialize(details)
    @id = details['id'] if details ['id']
    @cust_id = details['cust_id']
    @film_id = details['film_id']
  end

  def save()
    sql = "INSERT INTO tickets (cust_id, film_id) VALUES ($1, $2) RETURNING id;"
    values = [@cust_id, @film_id]
    results = SqlRunner.run(sql, values)
    @id = results[0]['id'].to_i()
  end

  def self.delete_all()
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end


end

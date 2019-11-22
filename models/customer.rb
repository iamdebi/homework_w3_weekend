require_relative('../db/runner')



class Customer

  attr_accessor :name, :funds
  attr_reader :id

  def initialize(details)
    @name = details['name']
    @funds = details['funds']
    @id = details['id'] if details['id']
  end


  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ($1, $2) RETURNING id;"
    values = [@name, @funds]
    results = SqlRunner.run(sql, values)
    @id = results[0]['id'].to_i()
  end

  def self.delete_all()
    sql = "DELETE FROM customers;"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE customers SET (name, funds) = ($1, $2) WHERE id = $3"
    values = [@name, @funds, @id]
    SqlRunner.run(sql, values)
  end

  def films()
    sql = "SELECT films.* FROM films INNER JOIN tickets ON films.id = film_id WHERE cust_id = $1;"
    values = [@id]
    films = SqlRunner.run(sql, values)
    return films.map{|film| Film.new(film)}
  end

  def buy_ticket(film)
    self.funds -= film.price
    self.update
    return self
  end

end

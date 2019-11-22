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

end

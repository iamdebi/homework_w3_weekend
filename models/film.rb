class Film

  attr_accessor :title, :price
  attr_reader :id

  def initialize(details)
    @title = details['title']
    @price = details['price']
    @id = details['id'] if details ['id']
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ($1, $2) RETURNING id;"
    values = [@title, @price]
    results = SqlRunner.run(sql, values)
    @id = results[0]['id'].to_i()
  end


end

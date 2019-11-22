class Film

  attr_accessor :title, :price
  attr_reader :id

  def initialize(details)
    @title = details['title']
    @price = details['price']
    @id = details['id'] if details ['id']
  end


end

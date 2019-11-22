class customer

  attr_accessor :name, :funds
  attr_reader :id

  def initialize(details)
    @name = details['name']
    @funds = details['funds']
    @id = details['id'] if details['id']
  end

end

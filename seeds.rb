require('pry')
require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')

Customer.delete_all()
Ticket.delete_all()
Film.delete_all()

customer1 = Customer.new(
  {'name' => 'Debbie',
  'funds' => 20
  }
)
customer1.save()

customer2 = Customer.new(
  {'name' => 'Andrew',
  'funds' => 50
  }
)
customer2.save()

customer3 = Customer.new(
  {'name' => 'Emma',
  'funds' => 40
  }
)
customer3.save()

film1 = Film.new(
  {'title' => 'Doctor Sleep',
  'price' => 8
  }
)
film1.save()

film2 = Film.new(
  {'title' => 'frozen II',
  'price' => 10
  }
)
film2.save()

film3 = Film.new(
  {'title' => 'Joker',
  'price' => 9
  }
)
film3.save()

ticket1 = Ticket.new(
  {'cust_id' => customer1.id,
  'film_id' => film1.id
  }
)
ticket1.save()

ticket2 = Ticket.new(
  {'cust_id' => customer1.id,
  'film_id' => film2.id
  }
)
ticket2.save()

ticket3 = Ticket.new(
  {'cust_id' => customer2.id,
  'film_id' => film2.id
  }
)
ticket3.save()

ticket4 = Ticket.new(
  {'cust_id' => customer3.id,
  'film_id' => film1.id
  }
)
ticket4.save()

ticket5 = Ticket.new(
  {'cust_id' => customer3.id,
  'film_id' => film3.id
  }
)
ticket5.save()


binding.pry

nil

require('pry')
require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')
require_relative('models/screening')

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

customer4 = Customer.new(
  {'name' => 'Grant',
  'funds' => 30
  }
)
customer4.save()

customer5 = Customer.new(
  {'name' => 'Murray',
  'funds' => 20
  }
)
customer5.save()

customer6 = Customer.new(
  {'name' => 'Quinton',
  'funds' => 50
  }
)
customer6.save()

customer7 = Customer.new(
  {'name' => 'Gregor',
  'funds' => 30
  }
)
customer7.save()

customer8 = Customer.new(
  {'name' => 'Elenor',
  'funds' => 25
  }
)
customer8.save()

customer9 = Customer.new(
  {'name' => 'Brendan',
  'funds' => 20
  }
)
customer9.save()

customer10 = Customer.new(
  {'name' => 'Paul',
  'funds' => 25
  }
)
customer10.save()

customer11 = Customer.new(
  {'name' => 'Mark',
  'funds' => 30
  }
)
customer11.save()

customer12 = Customer.new(
  {'name' => 'Steven',
  'funds' => 45
  }
)
customer12.save()

customer13 = Customer.new(
  {'name' => 'Charlie',
  'funds' => 60
  }
)
customer13.save()


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

film4 = Film.new(
  {'title' => 'Harriet',
  'price' => 10
  }
)
film4.save()

film5 = Film.new(
  {'title' => '21 Bridges',
  'price' => 12
  }
)
film5.save()

film6 = Film.new(
  {'title' => 'Knives Out',
  'price' => 9
  }
)
film6.save()


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

ticket6 = Ticket.new(
  {'cust_id' => customer1.id,
  'film_id' => film3.id
  }
)
ticket6.save()

ticket7 = Ticket.new(
  {'cust_id' => customer1.id,
  'film_id' => film4.id
  }
)
ticket7.save()

ticket8 = Ticket.new(
  {'cust_id' => customer1.id,
  'film_id' => film5.id
  }
)
ticket8.save()

ticket9 = Ticket.new(
  {'cust_id' => customer1.id,
  'film_id' => film6.id
  }
)
ticket9.save()

ticket10 = Ticket.new(
  {'cust_id' => customer2.id,
  'film_id' => film4.id
  }
)
ticket10.save()

ticket11 = Ticket.new(
  {'cust_id' => customer2.id,
  'film_id' => film5.id
  }
)
ticket11.save()

ticket12 = Ticket.new(
  {'cust_id' => customer9.id,
  'film_id' => film3.id
  }
)
ticket12.save()

ticket13 = Ticket.new(
  {'cust_id' => customer9.id,
  'film_id' => film5.id
  }
)
ticket13.save()

ticket14 = Ticket.new(
  {'cust_id' => customer8.id,
  'film_id' => film6.id
  }
)
ticket14.save()

ticket15 = Ticket.new(
  {'cust_id' => customer8.id,
  'film_id' => film5.id
  }
)
ticket15.save()

ticket16 = Ticket.new(
  {'cust_id' => customer5.id,
  'film_id' => film3.id
  }
)
ticket16.save()

ticket17 = Ticket.new(
  {'cust_id' => customer5.id,
  'film_id' => film6.id
  }
)
ticket17.save()

ticket18 = Ticket.new(
  {'cust_id' => customer6.id,
  'film_id' => film6.id
  }
)
ticket18.save()

ticket19 = Ticket.new(
  {'cust_id' => customer10.id,
  'film_id' => film6.id
  }
)
ticket19.save()

ticket20 = Ticket.new(
  {'cust_id' => customer11.id,
  'film_id' => film1.id
  }
)
ticket20.save()

ticket21 = Ticket.new(
  {'cust_id' => customer12.id,
  'film_id' => film5.id
  }
)
ticket21.save()

ticket22 = Ticket.new(
  {'cust_id' => customer13.id,
  'film_id' => film4.id
  }
)
ticket22.save()

ticket23 = Ticket.new(
  {'cust_id' => customer13.id,
  'film_id' => film2.id
  }
)
ticket23.save()

ticket24 = Ticket.new(
  {'cust_id' => customer11.id,
  'film_id' => film2.id
  }
)
ticket24.save()


ticket25 = Ticket.new(
  {'cust_id' => customer7.id,
  'film_id' => film2.id
  }
)
ticket25.save()

ticket26 = Ticket.new(
  {'cust_id' => customer4.id,
  'film_id' => film4.id
  }
)
ticket26.save()

ticket27 = Ticket.new(
  {'cust_id' => customer5.id,
  'film_id' => film2.id
  }
)
ticket27.save()

ticket28 = Ticket.new(
  {'cust_id' => customer9.id,
  'film_id' => film2.id
  }
)
ticket28.save()

screening1 = Screening.new(
  {'show_time' => '18:30',
    'availability' => 5,
    'film_id' => ticket1.film_id
  }
)
screening1.save()

  screening2 = Screening.new(
    {'show_time' => '18:30',
      'availability' => 5,
      'film_id' => ticket1.film_id
    }
  )
  screening2.save()

  screening3 = Screening.new(
    {'show_time' => '18:30',
      'availability' => 5,
      'film_id' => ticket2.film_id
    }
  )
screening3.save()

binding.pry

nil

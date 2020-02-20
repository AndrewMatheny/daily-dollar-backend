User.destroy_all
Budget.destroy_all
Transaction.destroy_all

#DateTime Year,Month,Day,Hour,Minute,Second

date1 = DateTime.new(2020, 02, 01, 12, 15)
date2 = DateTime.new(2020, 02, 02, 12, 15)
date3 = DateTime.new(2020, 02, 03, 12, 15)
date4 = DateTime.new(2020, 02, 04, 12, 15)
date5 = DateTime.new(2020, 02, 05, 12, 15)
date6 = DateTime.new(2020, 02, 06, 12, 15)

date31 = DateTime.new(2020, 02, 04, 02, 30)
date32 = DateTime.new(2020, 02, 05, 03, 11)


drew = User.create(name: "Drew", income: 100000)

budget1 = Budget.create(name: "Lunch", limit: 2000, daily: true, user_id: drew.id)
budget2 = Budget.create(name: "Rent", limit: 10000, daily: false, user_id: drew.id)
budget3 = Budget.create(name: "Shopping", limit: 5000, daily: true, user_id: drew.id)

Transaction.create(name: "Chipotle", amount: 12.37, date: date1, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Qdoba", amount: 14.50, date: date2, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Qdoba", amount: 14.50, date: date3, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Chipotle", amount: 11.22, date: date4, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Steak and Shake", amount: 10.02, date: date5, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Qdoba", amount: 15.57, date: date6, budget_id: budget1.id, user_id: drew.id)

Transaction.create(name: "Amazon", amount: 55.42, date: date31, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Best Buy", amount: 336.32, date: date32, budget_id: budget1.id, user_id: drew.id)



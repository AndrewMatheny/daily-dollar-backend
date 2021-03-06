User.destroy_all
Budget.destroy_all
Transaction.destroy_all

#DateTime Year,Month,Day,Hour,Minute, - Second

Time.zone = "Pacific Time (US & Canada)"

date1 = DateTime.new(2020, 02, 01, 12, 15).in_time_zone("Pacific Time (US & Canada)")
date2 = DateTime.new(2020, 02, 02, 12, 15).in_time_zone("Pacific Time (US & Canada)")
date3 = DateTime.new(2020, 02, 03, 12, 15).in_time_zone("Pacific Time (US & Canada)")
date4 = DateTime.new(2020, 02, 04, 12, 15).in_time_zone("Pacific Time (US & Canada)")
date45 = DateTime.new(2020, 02, 04, 12, 30).in_time_zone("Pacific Time (US & Canada)")
date5 = DateTime.new(2020, 02, 05, 12, 15).in_time_zone("Pacific Time (US & Canada)")
date6 = DateTime.new(2020, 02, 06, 12, 15).in_time_zone("Pacific Time (US & Canada)")

date31 = DateTime.new(2020, 02, 04, 02, 30).in_time_zone("Pacific Time (US & Canada)")
date32 = DateTime.new(2020, 02, 05, 03, 11).in_time_zone("Pacific Time (US & Canada)")

# date1 = DateTime.new(2020, 02, 01, 12, 15)
# date2 = DateTime.new(2020, 02, 02, 12, 15)
# date3 = DateTime.new(2020, 02, 03, 12, 15)
# date4 = DateTime.new(2020, 02, 04, 12, 15)
# date45 = DateTime.new(2020, 02, 04, 12, 30)
# date5 = DateTime.new(2020, 02, 05, 12, 15)
# date6 = DateTime.new(2020, 02, 06, 12, 15)

# date31 = DateTime.new(2020, 02, 04, 02, 30)
# date32 = DateTime.new(2020, 02, 05, 03, 11)



drew = User.create(indiv: "test1234", name: "Drew", email: "test@test.co", income: 100000)
zach = User.create(indiv: "testZ", name: "Zach", email: "test@testz.zo", income: 100)

budget1 = Budget.create(name: "Lunch", limit: 2000, daily: true, user_id: drew.id)
budget2 = Budget.create(name: "Rent", limit: 10000, daily: false, user_id: drew.id)
budget3 = Budget.create(name: "Shopping", limit: 5000, daily: true, user_id: drew.id)
budget4 = Budget.create(name: "Video Games", limit: 100, daily: true, user_id: zach.id)

Transaction.create(name: "Chipotle", amount: 12.37, date: date1, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Qdoba", amount: 14.50, date: date2, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Qdoba", amount: 14.50, date: date3, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Chipotle", amount: 11.22, date: date4, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Chipotle", amount: 13.22, date: date45, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Chipotle", amount: 14.22, date: date4, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Steak and Shake", amount: 10.02, date: date5, budget_id: budget1.id, user_id: drew.id)
Transaction.create(name: "Qdoba", amount: 15.57, date: date6, budget_id: budget1.id, user_id: drew.id)

Transaction.create(name: "Amazon", amount: 55.42, date: date31, budget_id: budget3.id, user_id: drew.id)
Transaction.create(name: "Best Buy", amount: 336.32, date: date32, budget_id: budget3.id, user_id: drew.id)



require "resources/mysql-async/lib/MySQL"

MySQL.Async.execute('SELECT SLEEP(5)', '', function()
    print("1")
end)
MySQL.Async.execute('SELECT SLEEP(4)', '', function()
    print("2")
end)
MySQL.Async.execute('SELECT SLEEP(3)', '', function()
    print("3")
end)
MySQL.Async.execute('SELECT SLEEP(2)', '', function()
    print("4")
end)
MySQL.Async.execute('SELECT SLEEP(1)', '', function()
    print("5")
end)

print(MySQL.Sync.fetchAll('SELECT "hello" as world', '')[1].world)

users = [
    {username: "Steve", password: "password1"},
    {username: "John", password: "password2"},
    {username: "James", password: "password3"},
    {username: "Doug", password: "password4"},
    {username: "Kevin", password: "password5"}
]

puts "Welcome to the authenticator"
25.times { print "-" }
puts "\nThis program will take input from the user and compare password"
puts "If the password is correct, you will get back the user object"

input = ""
count = 0
while true do
    puts "Username: "
    name = gets.chomp
    puts "Password: "
    password = gets.chomp
    puts name
    puts password
    user = users.select {|user| user[:username] == name && user[:password] == password }  
    if user.empty? 
        puts "Credentials were not correct"
    else
        puts user     
    end
    count += 1

    if count >= 3 
        puts "You have exceeded the number of attempts"
        break
    end
    
    puts "Press n to quit or any other key to continue"
    input = gets.chomp
    break if input == "n" 
end

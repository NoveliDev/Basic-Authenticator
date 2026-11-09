attempts = 0

users = [
  { username: "Alice", password: "password1" },
  { username: "Bob", password: "password2" },
  { username: "Charlie", password: "password3" },
  { username: "David", password: "password4" },
  { username: "Eve", password: "password5" }
]

def auth_user(username, password, list_of_users)
   list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  return "Credentials were not correct"
end
  
  puts "Welcome to the Basic Authenticator"
  30.times { print "-"}
  puts
  puts "This program will take input from the user and compare password" 
  puts "If password is corect, you will get back the user object"
  
  while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)    
    puts authentication
    
    puts "Press n to quit or any other key to continue:"
    input = gets.chomp.downcase
    break if input == "n"
  attempts += 1

end
puts "You have excceeeded the number of attempts" if attempts == 4
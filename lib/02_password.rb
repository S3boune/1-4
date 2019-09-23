def signup
  puts "Hello user, choisis un mot de passe stp"
  create_pass = gets.chomp

  return create_pass
end

def login(password)
  puts "User, pour te login il me faut ton mot de pase"
  input = gets.chomp

  while input != password
    puts "Erreur ! Try again."
    input = gets.chomp
  end

  puts "Merci"
end

def welcome_screen
  puts "Tu peux maintennat accéder aux messages secrets"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform

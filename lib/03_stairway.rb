def start
  puts "Bienvenue jeune padawan, est- ce que tu veux commencer une nouvelle partie ?"
  input = gets.chomp

  while input != "oui"
    puts "oui ou non ?"
    input = gets.chomp
  end

  puts "Let's go !"
  puts "Tu commences à la marche 1 et ton objectif est d'aller à la marche 10"
end

def mouvement
  stairs = 1

  while stairs != 10
    number = rand(1...6)

    if number == 5 || number == 6
      puts "Tu avances d'une marche"
      stairs += 1
    elsif number == 1
      puts "Tu descends d'une marche"
      stairs -= 1
    else
      puts "Tu restes en place"
    end
  end

  puts "YOU WIN"
end

def perform
  start
  mouvement
end


perform

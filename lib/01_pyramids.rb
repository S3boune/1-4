def ask_floor_number
  puts "Salut beauté égyptienne ! Combien veux-tu d'étages pour ta pyramide ?"
  print "> "
  input = gets.chomp

  floor_number = input.to_i
  return floor_number
end

def full_pyramid(floor_number)
  piece = "#"
  space = "-"
  piece_number = 1

  floor_number.times do |i|
    i += 1
    floor = space * (floor_number - i) + piece * (piece_number) + space * (floor_number - i)

    puts floor

    piece_number += 2
  end

end

def wtf_pyramid(floor_number)
  piece = "#"
  space = "-"
  tour_construct = floor_number - 1
  piece_number = floor_number * 2 - 1

  tour_construct.times do |i|
    i -= 2
    floor = space * (tour_construct + i) + piece * (piece_number - 2) + space * (tour_construct + i)

    puts floor

    piece_number -= 2
  end
end


def perform
  floor_number = ask_floor_number
  full_pyramid(floor_number)
  wtf_pyramid(floor_number)
end

perform

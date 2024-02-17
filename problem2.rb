class Game
    def initialize
      @total_points = 0
    end
  
    def start
      puts "Welcome to the Adventure Game!"
      puts "You have #{@total_points} points."
  
      loop do
        puts "Choose a room (1-3) to enter or 'exit' to end the game:"
        choice = gets.chomp.downcase #found gets.chomp online
  
        case choice
        when '1', '2', '3'
          enter_room(choice.to_i)
        when 'exit'
          end_game
          break
        else
          puts "Invalid choice! Please enter a number between 1 and 3 or 'exit'."
        end
      end
    end
  
    def enter_room(room_number)
      points = room_number * 5
      @total_points += points
      puts "You entered Room #{room_number} and earned #{points} points."
    end
  
    def end_game
      puts "Game over! You collected a total of #{@total_points} points."
    end
  end
  
  game = Game.new
  game.start
  
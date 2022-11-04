class GuessingGame
  attr_accessor :guess
  attr_reader :game_number


  def initialize
    @guess = gets.chomp.to_i
    @game_number = rand(1..30)
    p "Welcome to the guessing game:\n enter your first guess:"
    play

  
  end



  def play
    
    until(check_guess == true)

      get_user_guess
      check_guess

    end

  end

  def is_finished?
      if(check_guess == true)
        return true
      else false

      end
  end

  def check_guess

        if(guess == game_number)
          puts "You got it"
          return true
        else
          puts "Incorrect"
          return false
        end
 
  end

  def get_user_guess()
      self.guess = gets.chomp.to_i
  end

end


# Driver Code Below this line

#Release 3
new_game = GuessingGame.new
new_game.play

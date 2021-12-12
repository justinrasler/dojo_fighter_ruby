require "./dojo_fighters.rb"

puts "Welcome fighter, what is your name"
name  = gets

##################################
##Create your fighter 
##################################


Player = Fighter.new(name, 0, 0, 8, 10)
Dio = Fighter.new('Dio',4 ,4 ,4 ,10)


##################################
## Training montage
##################################
week = 1

while week < 11

puts " Listen here #{name}, you weak piece of shit, you need to train more if you want fight the god DIO
what would you like to train in #{name}? |stronger|, |life_up|, |harden|"
    

input = gets.chomp

    if input == "stronger"
        Dojo.stronger(Player)


    elsif input == "life_up"
        Dojo.life_up(Player)


    else input == "harden"
        Dojo.harden(Player)
    end

    week += 1
end

##################################
##fight 
##################################

while true
    puts "Do you want to |fight| or |run|? "
    input = gets.chomp

    if input == "fight"
        Player.attack(Dio)
        Dio.attack(Player)
        
        if Player.life <= 0 
            puts "#{name}, no shame in losing to Dio. Train and try again"
            break

        elsif Player.strength < Dio.defense && Dio.strength < Player.defense
            puts "It's a draw."
            break
        end

        if Dio.life <= 0 
            puts "#{name} you have defeated Dio!"
            break
        end
        puts "Dio's health: #{Dio.life} - #{name}'s health: #{Player.life}"
    end
    

    if input == "run"
        puts "What a weenie. You ran away."
        break
    end


end




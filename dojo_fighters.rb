##################################
## DOJO FIGHTER 2.0 (RUBY EDITION)
##################################


class Fighter


    attr_reader :name
    attr_accessor :defense, :strength, :luck, :life


    def initialize (name, defense, strength, luck, life)
        @name = name
        @defense = defense
        @strength = strength
        @luck = luck
        @life = life
    end

    def attack(opp)
        damage = @strength - opp.defense
        if damage <= 0
            puts "#{name} could not do damage to #{opp.name}"
        elsif
            opp.life = opp.life - damage
            puts "#{opp.name} took #{damage} damage now has #{opp.life} life left"
        end 
    end
end


class Dojo
    def self.stronger(fighter)
        fighter.strength += 1
        puts "#{fighter.name} strength increased by 1"
    end
    def self.harden(fighter)
        fighter.defense += 1
        puts "#{fighter.name} defense increated by 1"
    end
    def self.life_up(fighter)
        fighter.life += 1
        puts "#{fighter.name} life increated by 1"
    end
end

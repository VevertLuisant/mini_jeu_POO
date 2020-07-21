class Player
attr_accessor :name, :life_points
@@all_players = []
def initialize(name)
    @name = name
    @life_points = 10
    @@all_players << self
end
def show_state
    puts "#{@name} a #{@life_points} points de vie"
end


def self.all
    return @@all_players
end

def gets_damage(hit)
    @life_points = @life_points - hit
    if @life_points <= 0
        puts "#{@name} a été tué! "
    else puts "Il lui inflige #{(hit)} de dommage! "
    end
end

def attacks(player)
    puts "#{name} attaque #{player.name}"
end

def compute_damage
    return rand(1..6)
  end
end
 





  


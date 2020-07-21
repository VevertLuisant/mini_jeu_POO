class Player
attr_accessor :name, :life_points
@@all_players = []

# méthode "mère" qui va initialiser tous les personnages
def initialize(name)
    @name = name
    @life_points = 10
    @@all_players << self
end

#méthode pour définir les PV de chaque joueur
def show_state
    puts "#{@name} a #{@life_points} points de vie"
end

#méthode pour convoquer tous les joueurs
def self.all
    return @@all_players
end

#méthode pour compter les dommages subis
def gets_damage(hit)
    @life_points = @life_points - hit
    if @life_points <= 0
        puts "#{@name} a été tué! "
    else puts "Il lui inflige #{(hit)} de dommage! "
    end
end

#métode d'attaque
def attacks(player)
    puts "#{name} attaque #{player.name}"
end

#méthode jet de dé
def compute_damage
    return rand(1..6)
  end  
end
 





  


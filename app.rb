require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# on définit qui seront 2 joueurs avec la méthode initialize
player1 = Player.new("Josiane")
puts "Voici à ma droite la charcutière de Roubaix: #{player1.name}" 

player2 = Player.new("José")
puts "Et à ma gauche le désosseur de Montargis: #{player2.name}"

puts "========================================================"
#ici, on vérifie bien si notre variable "santé" 
#-- l'attr_accessor life_point-- est bien défini
puts "Dans quelle forme se trouve nos combattants?"
player1.show_state
player2.show_state

puts "Fini de discuter! Maintenant, on casse des bouches! "

puts "Honneur aux dames! "
puts "========================================================="
# ici commence la boucle qui va nous permettre de jalonner
# notre combat. Celui s'arrête dès qu'un des combattants voit sa vie tomber à zéro
while player1.life_points > 0 && player2.life_points > 0                                                         
puts player1.attacks(player2)
puts player2.gets_damage(player1.compute_damage)

if player2.life_points > 0
  puts player2.attacks(player1)
  puts player1.gets_damage(player2.compute_damage)
end

puts '========================================================='
puts 'Voyons maintenant comment vont nos champions'
puts player1.show_state
puts player2.show_state
end


binding.pry













require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
puts "Voici à ma droite la charcutière de Roubaix: #{player1.name}"

player2 = Player.new("José")
puts "Et à ma gauche le désosseur de Montargis: #{player2.name}"

puts "========================================================"

puts "Dans quelle forme se trouve nos combattants?"
player1.show_state
player2.show_state

puts "Fini de discuter! Maintenant, on casse des bouches! "

puts "Honneur aux dames! "
puts "========================================================="

while player1.life_points > 0 && player2.life_points >0 
    puts "#{player1.name} attaque #{player2.name}"
    puts player2.gets_damage(player1.compute_damage)
    puts "#{player2.name} attaque #{player1.name}"
    puts player1.gets_damage(player2.compute_damage)
    if player2.life_points <1 
    elsif player1.life_points <1
      break
    end

puts "========================================================="
puts "Voyons maintenant comment vont nos champions"
puts player1.show_state
puts player2.show_state
end






binding.pry













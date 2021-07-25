    require 'controller'
class Router
    
def initialize
    @controller = controller.new
end

    def perform
        puts "Bienvenu dans l'application du Gossip de THP ! "
        while true
            puts "Veillez choisir l'une de ces possibilités:"
            puts "01). Crée un Gossip"
            puts "02). Afficher tout les potins"
            puts "03). Supprimer un potins"
            puts "04).Quitter l'application"
            params    = gets.chomp.to_i

            params = 00

            case params
            when "01"
            puts "1).Ta choisie création d'un Gossip"
            @controller.create_gossip
            when "02"
            puts "2).Ta choisie l'affichage des gossip"
            @controller.index_gossips
            when "03"
            puts "3). Tu veux supprimer quel potins ?"
            @controller.delete_gossip
            when "04"
            puts "04).Quitter l'application"
            break
            else
            puts "Ce choix n'existe pas, choisir entre 01 et 04 svp, Merci !"
            end
        end
    end
    perform()
end 


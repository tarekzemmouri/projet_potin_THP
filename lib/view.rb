require './gossip.rb'

class View
    
    def initialize
    end

    def create_gossip
        params = Hash.new
        puts "Quelles votre pseudo ?"
        params[:author] = gets.chomp
        puts "donne moi ton gossip le plus savoureux "
        params[:content] = gets.chomp
        params
    end

    def index_gossips(gossips)
        i = 1
        gossips.each do |gossip|
            puts "n\Le gossip numéro: #{i}"
            puts "Gossip de #{gossip.author}"
            puts "De #{gossip.content}\n"
            i+=1
        end
    end
end


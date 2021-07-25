
require 'csv'
class Gossip
    #deux variables d'instance 
    attr_reader :author, :content

    def initialize(author,content)
        @author = author
        @content = content
    end

    def save
        db = CSV.open("gossip.csv","w") 
            db << ["author", "content"]
        end
    end

    def self.all
        all_gossips = Array.new
        csv.each do |gossip| 
            all_gossips << Gossip.new(gossip[:author], gossip[:content])
            all_gossips
        end
    end
end


    #Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV

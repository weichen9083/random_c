class RandomC::Anime

    attr_accessor :name, :genre, :premiere_date, :episodes

    @@all =[]

    def initialize(name)
        @name =  name 
        save    
    end 

    def save 
        @@all << self
    end 


    def self.all
        RandomC::Scraper.scrape_anime if @@all.empty? 
        @@all     
    end 



end 
class RandomC::Anime

    attr_accessor :name


    @@all =[]

    def initialize(name)
        @name =  name 
        save    
    end 

    def save 
        @@all << self
    end 


    def self.all
        @@all     
    end 


end 
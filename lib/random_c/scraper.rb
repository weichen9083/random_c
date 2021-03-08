

class RandomC::Scraper 

    def self.scrape_anime
        doc = Nokogiri::HTML(open("https://randomc.net/2020/12/22/winter-preview-2021/"))
        anime = doc.css("div.preview_info table")
        puts anime.count 
        array = []
        anime.each do |a|
            array = a.text.split("\n")
            anime = RandomC::Anime.new(array[2])  
            anime.genre = array[10]
            anime.premiere_date = array[7]
            anime.episodes = array[14]
        end 
        


        
    end 





end 
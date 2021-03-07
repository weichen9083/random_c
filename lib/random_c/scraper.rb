require_relative 

class RandomC::Scraper 

    def scrape_anime_list
        doc = Nokogiri::HTML(open("https://randomc.net/2020/12/22/winter-preview-2021/"))
        binding.pry 
    end 





end 
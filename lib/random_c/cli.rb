
class RandomC::CLI 

    def call
        puts "Wecolme to randomc"
        get_anime_list
        ask_user_for_anime
     end
     
     def get_anime_list
        RandomC::Anime.new("anime1")
        RandomC::Anime.new("anime2")
        RandomC::Anime.new("anime3")
        puts "which anime you want to preview about?"
        @get_anime_list = RandomC::Anime.all
        @get_anime_list.each_with_index do |name, index|
            puts "#{index+1}. #{name.name}" 
        end   
     end 
     def ask_user_for_anime 
        choosen_anime = gets.strip.to_i
        show_detail_on_the_anime(choosen_anime) if valid_input(choosen_anime, @get_anime_list)  
     end 

     def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0 
     end 

     def show_detail_on_the_anime(choosen_anime)
      anime = @get_anime_list[choosen_anime - 1]
      puts "anime detail for #{anime.name}" 
     end 

end 
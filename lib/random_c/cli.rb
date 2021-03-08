
class RandomC::CLI 

    def call
        puts "Wecolme to randomc"
        get_anime_list
        ask_user_for_anime
     end
     
     def get_anime_list
        puts "which anime you want to preview about?"
        @get_anime_list = RandomC::Anime.all
        @get_anime_list.each_with_index do |name, index|
            puts "#{index+1}. #{name.name}" 
        end   
     end 
     def ask_user_for_anime 
        choosen_anime = gets.strip.to_i
        if valid_input(choosen_anime, @get_anime_list)  
        show_detail_on_the_anime(choosen_anime) 
        else 
         puts "please select a valid option between 1-#{@get_anime_list.length}"
         ask_user_for_anime 
        end 
     end 

     def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0 
     end 

     def show_detail_on_the_anime(choosen_anime)
      anime = @get_anime_list[choosen_anime - 1]
      puts "name: #{anime.name}" 
      puts anime.genre
      puts anime.premiere_date
      puts anime.episodes

     end 

end 
require "pry"

#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands: "
  puts "-help : displays this help message"
  puts "-list : displays a list of songs you can play"
  puts "-play : lets you choose a song to play"
  puts "-exit : exits this program"
end



def list(my_songs)
 my_songs.each_with_index do  |song, idx|
   puts "#{idx}. #{song}"
 end
end


def play(my_songs)
  # binding.pry
  
  puts "Please enter a song name or number: "
  music = gets.chomp
  
  # my_songs.each do |song, idx|
    if (1..9).to_a.include?(music.to_i)    
      puts "Playing #{my_songs[music.to_i - 1]}" 
    elsif my_songs.include?(music)   
      puts "Playing #{music}"
    else
      puts "Invalid input, please try again"
    end
  # end

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  command = ""
  
  
  until command == exit
    puts "Please enter a command: "
    command = gets.strip
    case command
      when 'help'
       help
      when 'list'
       list
      when 'play'
        play
      when 'exit'
        break
      end
    end
end

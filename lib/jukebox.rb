require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:
   help : displays this help message
   list : displays a list of songs you can play
   play : lets you choose a song to play
   exit : exits this program"
 end
 
 def list(songs)
   counter = 1 
   songs.each do |song|
     puts "#{counter}. #{song}"
     counter += 1 
   end
 end
 
 def play(songs)
  binding.pry
   puts "Please enter a song name or number:"
   song_name_num = gets.chomp
   songs.each do |song|
      if song_name_num == song
        puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
  end
    end
  end

def exit_jukebox
  puts "Goodbye"
end

def run 
  help
  puts "Please enter a command:"
  user_response = gets.chomp 
  if user_response == "list"
    return list
    elsif user_response = "play"
    return play
    elsif user_response = "help"
    return help
    elsif user_response = "exit"
    return exit 
  end 
end

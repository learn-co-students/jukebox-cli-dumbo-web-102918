require "pry"

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
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  ans = gets.chomp
  
  if songs.include?(ans)
    puts "Playing #{ans}"
    system 'open /Users/Omar/Documents/GitHub/jukebox-cli-dumbo-web-102918/audio/Emerald-Park/01.mp3'
    
  
  elsif ans.to_i<=songs.length && ans.to_i != 0
    puts "Playing #{songs[((ans.to_i)-1)]}"
    
  else
    puts "Invalid input, please try again"
   
  end

end

def list (songs)
  counter = 1
  songs.each do |song|
    puts "#{counter} . #{song}"
    counter += 1 
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  keepgoing = true
  
  while keepgoing
  puts "Please enter a command:"
  com = gets.chomp
  
  if com == "help"
    help
  elsif com == "list"
    list (songs)
  elsif com == "play"
    play (songs)
  elsif com == "exit"
    exit_jukebox
    keepgoing = false
  end
end
    
end

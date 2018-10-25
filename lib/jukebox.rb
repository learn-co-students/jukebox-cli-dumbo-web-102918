def songs  
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
end

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end 

def list (songs)
  songs.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  array.each_with_index do |index, value|
    puts "#{index+1}. #{value}"
  end 
end

def play (songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  if songs.include?(answer)
    puts "playing #{answer}"
  elsif (1..songs.length+1).to_a.include?(answer) 
        puts "playing #{songs[answer-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end 


def run (songs)
  loop do 
  help 
  puts "Please enter a command:"
  answer = gets.chomp
  if answer == "exit"
    break 
  else if answer== "list"
def run
  help 
  puts "Please enter a command:"
  answer = gets.chomp
  #unless answer == "exit"
  if answer== "list"
    list(songs)
  elsif answer== "play"
    play(songs)
  elsif answer== "help"
    help
  else puts "Invalid input, please try again"
  end
end
end 
exit_jukebox
end 

play(songs)
exit_jukebox
end 

run 





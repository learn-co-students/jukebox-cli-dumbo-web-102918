# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  choice = songs.find.with_index {|song, i|song == song_choice || song_choice == (i+1).to_s}
  if choice
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end

  ##Using case
  # case song_choice
  #     when "1" , "Phoenix - 1901"
  #       puts "#{songs_list[0]}"
  #
  #     when "Tokyo Police Club - Wait Up" , "2"
  #       puts "#{songs_list[1]}"
  #
  #     when "Sufjan Stevens - Too Much", "3"
  #       puts "#{songs_list[2]}"
  #
  #     when "The Naked and the Famous - Young Blood", "4"
  #       puts "#{songs_list[3]}"
  #
  #     when "(Far From) Home - Tiga", "5"
  #       puts "#{songs_list[4]}"
  #
  #     when "The Cults - Abducted", "6"
  #       puts "#{songs_list[5]}"
  #
  #     when "Phoenix - Consolation Prizes", "7"
  #       puts "#{songs_list[6]}"
  #
  #     when "Harry Chapin - Cats in the Cradle", "8"
  #       puts "#{songs_list[7]}"
  #
  #     when "Amos Lee - Keep It Loose, Keep It Tight", "9"
  #       puts "#{songs_list[8]}"
  #
  #     else
  #       puts "Invalid input, please try again"
  # end

end

def list(songs)
  songs.each_with_index {|song, i|puts "#{i+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Welcome to your Jukebox!"
  help

  loop do
    puts "Please enter a command:"
    user_option = gets.chomp

      case user_option
        when "help"
          help
        when "list"
          list(songs)
        when "play"
          play(songs)
        when "exit"
          exit_jukebox
          break
        else
          "Please enter correct command"
      end

  end

end

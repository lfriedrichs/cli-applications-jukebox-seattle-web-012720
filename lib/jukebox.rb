require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program" 
end

def play(songs)
  puts 'Please enter a song name or number:'
  answer = gets.strip
  binding.pry
  if songs.include?(answer)
    puts "Playing #{answer}"
  elsif answer.to_f <= songs.length && answer != nil
    puts "Playing #{songs[answer.to_f-1]}"
  else 
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run
  
end
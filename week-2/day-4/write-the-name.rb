puts "What is yoour name?"
name=gets.chomp
puts "Writting your name to a file!"
File.open('yourfile', 'w') { |file| file.write(name) }
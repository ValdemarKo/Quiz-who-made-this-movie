require_relative "lib/film"

puts "Привет любитель кино, давай узнаем насколько хорошо ты знаешь фильмы. "
 
current_path = File.dirname(__FILE__)

file_names = Dir[current_path + "/data/*"]

films = []
directors = []

Film.new(lines[0], lines[1], lines[2])


file_names.each do |file_name|
  lines = File.readlines(file_name, chomp: true)
  films << Film.new(lines[0], lines[1], lines[2])
  directors << lines[1]
end 

variants = []

films.sample(3).each do |film| 
    puts "Кто снял #{film.print_question}?"
    real_director = film.director 
    variants = directors.grep_v(real_director).sample(3) << real_director
    variants.each.with_index(1) do |variant, index|
        puts "#{index}. #{variant}"
    end
    user_input = gets
end  


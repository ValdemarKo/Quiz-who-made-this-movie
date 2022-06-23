class Film
  attr_reader :title, :director, :year
  attr_accessor :good_answers
  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
    @good_answers = 0
  end

  def print_question
     "фильм #{@title} (#{@year})"
  end
  
  def result 
    if user_input == real_director
      puts "Правильно "
      @good_answers += 1
    else
      puts "Неправильно"
    end 
    return 
      @good_answers
  end 
end

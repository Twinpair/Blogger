class Book
    attr_accessor :title
  def title=(title) 
      non_capitalize_words = %w{the a by on for of are with just but and to the my I has some in an}
      words = title.split(' ')
      array = []
      i = 0
      words.each do |word|
        if non_capitalize_words.include?(word) && word != words[0]
            array.push(word)
            i = i + 1
        elsif i > 0 && word == words[0]
            array.push(word)
        else
            array.push(word.capitalize)
        end
      end
      @title = array.join(' ')
  end
end
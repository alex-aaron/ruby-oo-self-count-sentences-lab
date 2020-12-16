require 'pry'

class String


  def sentence?
    if self.end_with?(".")
      true 
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else 
      false
    end
  end

  def count_sentences
    delimiters = [".", "?", "!"]
    sentences_array = self.split(Regexp.union(delimiters))
    count = sentences_array.length
    sentences_array.each do |sentences|
      if sentences == ""
        count = count - 1
      else
        sentences_array.length
      end
    end
    return count
  end
end
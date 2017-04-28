require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    array = self.split(' ')
    new_array = []

    array.each do |word|
      if word.end_with?('.') || word.end_with?('?') || word.end_with?('!')
        new_array << word
      end
    end
    new_array.length
  end
end

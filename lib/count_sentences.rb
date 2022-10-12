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
    single_sentences = self.split(/[.?!]/).filter do |sentence|
      if !sentence.empty?
        sentence
      end
    end
    single_sentences.count
  end
  
  "hello there. I love cookies!".count_sentences
end
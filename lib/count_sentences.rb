require 'pry'

class String

  def sentence?
    self[self.length - 1] == "."
  end

  def question?
    self[self.length - 1] == "?"
  end

  def exclamation?
    self[self.length - 1] == "!"
  end

  def count_sentences
    split_sentence = self.split(/[^a-zA-Z0-9, ]/)
    split_sentence = split_sentence.reject { |e| e.empty? }
    split_sentence.count
  end
end
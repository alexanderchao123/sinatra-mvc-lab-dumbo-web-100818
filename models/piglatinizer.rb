class PigLatinizer
  def piglatinize(sentence)
    words = sentence.split(" ")
    words.map {|word| piggify(word)}.join(" ")
  end

  def piggify(word)
    vowels = "aeiouAEIOU"
    return (word + "way") if vowels.include?(word[0])

    word.each_char.with_index do |char, index|
      if vowels.include?(char)
        return word[index..-1] + word[0...index] + "ay"
      end
    end
  end
end

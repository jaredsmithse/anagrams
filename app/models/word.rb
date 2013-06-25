class Word < ActiveRecord::Base
  def anagrams
    result_array=[]
    Word.where('length = ?', length).each do |match|
      unique_letters = self.text.downcase.split('') - match.text.downcase.split('')
      result_array << match if unique_letters.empty?
    end
    result_array
  end

  def length
    text.length
  end
  # Remember to create a migration!
end

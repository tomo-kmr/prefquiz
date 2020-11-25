class Pref < ApplicationRecord
  def self.pref_set(difficulty)
    if difficulty == '0' || difficulty == '3'
      @prefs = Pref.all.order('RAND()')
    elsif difficulty == '1'
      @prefs = Pref.where('region_no =1').order('RAND()')
    elsif difficulty == '2'
      @prefs = Pref.where('region_no =2').order('RAND()')
    end
  end
end

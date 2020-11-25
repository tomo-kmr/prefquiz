class Pref < ApplicationRecord
  def self.init
    Pref.all.each do |pref|
      pref.update_attributes(answer_no: rand(0..3), rotate: 0)
    end
  end

  def self.pref_set(difficulty)
    if difficulty == '0' || difficulty == '3'
      @prefs = Pref.all.order('RAND()')
    elsif difficulty == '1'
      @prefs = Pref.where('region_no =1').order('RAND()')
    elsif difficulty == '2'
      @prefs = Pref.where('region_no =2').order('RAND()')
    end

    @prefs.each_with_index do |pref, i|
      pref.update_attribute(:sort_no, i)
      pref.update_attribute(:rotate, rand(1..3) * 90) if difficulty == '3'
    end
  end
end

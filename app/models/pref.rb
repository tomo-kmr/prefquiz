class Pref < ApplicationRecord

  def self.init
    Pref.all.each do |pref|
      randnum = rand(0..3)
      pref.update_attribute(:answer_no, randnum)
    end
  end

  def self.set_pref(difficulty)
    if difficulty == "0"
      @prefs = Pref.all.order("RAND()").limit(4)
    elsif difficulty == "1"
      @prefs = Pref.where('region_no =1').order("RAND()").limit(4)
    elsif difficulty == "2"
      @prefs = Pref.where('region_no =2').order("RAND()").limit(4)
    end
  end
end

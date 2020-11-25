class PrefsController < ApplicationController
  def index
  end

  def show
    @prefs_temp = Pref.pref_set(params[:difficulty])
    @prefs = []
    @prefs_all = []
    @prefs_temp.each_with_index do |pref, i|
      if i <= 4
        pref[:sort_no] = i
        pref[:answer_no] = rand(1..3)
        pref[:rotate] = rand(1..3) * 90 if params[:difficulty] == '3'
        @prefs << pref
      else
        @prefs_all << pref
      end
    end
    gon.prefs = @prefs
    gon.prefs_all = @prefs_all
  end
end

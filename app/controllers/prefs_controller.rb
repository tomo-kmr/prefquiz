class PrefsController < ApplicationController
  def index
  end

  def show
    Pref.init
    @prefs_temp = Pref.pref_set(params[:difficulty])
    @prefs = @prefs_temp.where('sort_no <= 4')
    @prefs_all = @prefs_temp.where('sort_no > 4')
    gon.prefs = @prefs
    gon.prefs_all = @prefs_all
  end
end

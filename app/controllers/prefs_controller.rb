class PrefsController < ApplicationController
  # before_action :set_difficulty, only: [:show]
  def index
  end

  def show
    Pref.init
    @prefs = Pref.set_pref(params[:difficulty])
    @prefs_all = Pref.all.order("RAND()")
  end

  private

  
end

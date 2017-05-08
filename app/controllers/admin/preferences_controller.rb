class Admin::PreferencesController < ApplicationController
   before_action :set_preference, only: [:show, :edit, :update, :destroy]
   def index
     @preferences = Preference.all
   end
 
    def show
    end
 
    def new
    @preference = Preference.new
    end
 
    def Create
     @preference = Preference.new(preference_params)
      if @preference.valid?
        redirect_to admin_preference_path(@preference)
     else
        render :new
      end
    end
 
    def edit
    end
 
    def update
      if @preference.update!(preference_params)
        redirect_to admin_preference_path(@preference)
      else
        render :edit
      end
    end
 

 
    private
 
    def set_preference
      @preference = Preference.find(params[:id])
    end
 
    def preference_params
      params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
    end
 end
    

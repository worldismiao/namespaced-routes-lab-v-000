class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def preference
     Preference.find_by(id: 1) || Preference.new({
       artist_sort_order: "ASC",
       song_sort_order: "ASC",
       allow_create_songs: false,
       allow_create_artists: false
       })
   end
end

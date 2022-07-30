class StaticPagesController < ApplicationController
  require 'flickr'

  def home
    flickr = Flickr.new ENV["FLICKR_KEY"], ENV["FLICKR_SECRET"]
    return unless params[:user_id]

    begin
      @user_photos = flickr.photos.search(user_id: params[:user_id])
    rescue StandardError => e
      flash[:alert] = "#{e}"
      redirect_to root_path
    end
  end

end

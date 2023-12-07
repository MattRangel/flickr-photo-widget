class StaticPagesController < ApplicationController
  def index
    if params[:user_id]
      @photos = Flickr.new.people.getPhotos(user_id: params[:user_id]).map { |photo| Flickr.url(photo) }
    end
  end
end

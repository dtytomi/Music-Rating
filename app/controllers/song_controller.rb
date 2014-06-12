class SongController < ApplicationController
  def index
  	@musics = Music.order(:Artist)
  end
end

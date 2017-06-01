class BaseSongsController < ApplicationController
  before_action :set_base_song, only: [:show, :edit, :update, :destroy]

  # GET /base_songs
  # GET /base_songs.json
  def index
    @base_songs = BaseSong.all
  end

  # GET /base_songs/1
  # GET /base_songs/1.json
  def show
  end

  # GET /base_songs/new
  def new
    @base_song = BaseSong.new
  end

  # GET /base_songs/1/edit
  def edit
  end

  # POST /base_songs
  # POST /base_songs.json
  def create
    @base_song = BaseSong.new(base_song_params)

    respond_to do |format|
      if @base_song.save
        format.html { redirect_to @base_song, notice: 'Base song was successfully created.' }
        format.json { render :show, status: :created, location: @base_song }
      else
        format.html { render :new }
        format.json { render json: @base_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_songs/1
  # PATCH/PUT /base_songs/1.json
  def update
    respond_to do |format|
      if @base_song.update(base_song_params)
        format.html { redirect_to @base_song, notice: 'Base song was successfully updated.' }
        format.json { render :show, status: :ok, location: @base_song }
      else
        format.html { render :edit }
        format.json { render json: @base_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_songs/1
  # DELETE /base_songs/1.json
  def destroy
    @base_song.destroy
    respond_to do |format|
      format.html { redirect_to base_songs_url, notice: 'Base song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_song
      @base_song = BaseSong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_song_params
      params.require(:base_song).permit(:title)
    end
end

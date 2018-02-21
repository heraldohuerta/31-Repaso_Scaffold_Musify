class SongsController < ApplicationController


  def new

  end

  def edit
    @song      = Song.find(params[:id])
    @playlist  = Playlist.find(params[:playlist_id])
  end
  def create
     @song = Song.new(song_params)
     @song.playlist_id = params[:playlist_id]
     if @song.save
          redirect_to playlist_path(params[:playlist_id]), notice: 'La canción se ha creado con éxito!'
        else
          redirect_to playlist_path(params[:playlist_id]), notice: 'La canción no  ha sido creado !'
        end
  end


  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to playlist_path(params[:playlist_id]), notice: 'La canción se ha elimando!'
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to playlist_path(params[:playlist_id]), notice: 'La canción se ha actualizado!'
    else
      redirect_to playlist_path(params[:playlist_id]), notice: 'Problemas al actualizar!'
    end
  end




    private

      # Never trust parameters from the scary internet, only allow the white list through.
      def song_params
        params.require(:song).permit(:name, :artis)
      end
end

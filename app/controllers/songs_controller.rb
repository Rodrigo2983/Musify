class SongsController < ApplicationController
   #metodo para crear en la vista show
    def create 
        song = Song.new(song_params)
        song.playlist_id = params[:playlist_id]
        song.save 
        redirect_to song.playlist, notice: 'La cancion fue creada con exito'
    end
    # metodo para borrar en la vista show
    def destroy
        id = params[:id]
        song =Song.find(id)
        song.destroy
        redirect_to song.playlist, notice: 'La cancion a sido eliminda'
    end
    # controllador para elimir una cancion 

    def set_favorite 
        song =Song.find(params[:id])
        song.favorite = true
        song.save
        redirect_to song.playlist, notice: 'cancion favorita' 

    end
    
    private #el metodo private solo puede ser usado dentro de la clase , es parte la arquitectura 

    def song_params
        params.require(:song).permit(:artist, :name)
    end
end

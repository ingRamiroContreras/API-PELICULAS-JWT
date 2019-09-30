class MoviesController < ApplicationController
    before_action :set_movie, only: [:show, :update, :destroy]
    
    # GET /movies
    def index
      @movies = Movie.all
      json_response(@movies)
    end
  
    # POST /movies
    def create
      @movie = Movie.create!(movie_params)
      json_response(@movie, :created)
    end
  
    # GET /movies/:id
    def show
      json_response(@movie)
    end
      
    # PUT /movies/:id
    def update
      @movie.update(movie_params)
      head :no_content
    end
  
    # DELETE /movies/:id
    def destroy
      @movie.destroy
      head :no_content
    end

    # GET /movies/fecha/:fecha
    def show_fechacreacion
      @moviefecha = Movie.where("created_at <= ?", params[:fecha] + "T00:00:00.357Z")
      json_response(@moviefecha)
    end
  
    private
    def movie_params
      # whitelist params
      params.permit(:nombre, :descripcion, :url_img, :dias_presentacion, :fecha)
    end
  
    def set_movie
      @movie = Movie.find(params[:id]) 
    end

end
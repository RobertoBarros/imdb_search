class MoviesController < ApplicationController
  def index
  	if params[:q].present?
  		@message = "Exibindo filmes com '#{params[:q]}'"
  		@movies = Movie.search(params[:q])
  	else
  		@movies = Movie.all
  	end

  end
end

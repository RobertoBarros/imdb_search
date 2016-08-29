class SearchsController < ApplicationController
  def index
    if params[:q].present?
      @message = "Exibindo filmes e séries com '#{params[:q]}'"
      @results = PgSearch.multisearch(params[:q])
    else
      @results = []
    end


  end
end

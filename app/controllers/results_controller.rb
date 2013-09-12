class ResultsController < ApplicationController

  def query
    @pg_search_documents = PgSearch.multisearch(params[:query])
    render "results/index"
  end
end

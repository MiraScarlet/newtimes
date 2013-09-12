class ResultsController < ApplicationController

  def query
    @pg_search_documents = PgSearch.multisearch(params[:query])
  end
end

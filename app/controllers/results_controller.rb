class ResultsController < ApplicationController

  def query
      a = params[:query]
      a = a.to_s
    @employee_search = Employee.fts_for(a)
    render "employees/index"
  end
end

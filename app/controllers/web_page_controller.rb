class WebPageController < ApplicationController
  def home
  end

  def js
  end

  def employers
  end

  def about
  end

  def contact
    @employee = Employee.new
  end
end

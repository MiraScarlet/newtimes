class JobsController < ApplicationController




  def create
    @employer = Employer.find(params[:job][:employer_id])
    @employee = Employee.find(params[:job][:employee_id])
    job = params[:job]
    date = Date.new job["week_of(1i)"].to_i, job["week_of(2i)"].to_i, job["week_of(3i)"].to_i
    @employee.jobs.create!(:week_of => date, :employer_id => @employer.id, :employee_id => @employee.id, :contractor => @employee.name, :contractor_lname => @employee.last_name, :rate_of_pay => @employee.rate_of_pay, :shift => @employee.shift, :customer => @employer.name )

    redirect_to :back
  end


  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to :back
  end


  def update
    @employer = Employer.find(params[:job][:employer_id])
    @employee = Employee.find(params[:job][:employee_id])
    @job = Job.find(params[:job][:id])
    job = params[:job]
    week_of_date = Date.new job["week_of(1i)"].to_i, job["week_of(2i)"].to_i, job["week_of(3i)"].to_i
    week_of_end_date = Date.new job["week_of_end(1i)"].to_i, job["week_of_end(2i)"].to_i, job["week_of_end(3i)"].to_i
    @job.update_attributes!(:week_of => week_of_date, :week_of_end => week_of_end_date, :employer_id => @employer.id, :employee_id => @employee.id, :contractor => @employee.name, :contractor_lname => @employee.last_name, :rate_of_pay => params[:job][:rate_of_pay], :shift => params[:job][:shift], :customer => @employer.name )
    redirect_to :back
  end

end
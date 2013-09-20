class EngagementsController < ApplicationController
  # GET /engagements
  # GET /engagements.json
  def index
    @engagements = Engagement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @engagements }
    end
  end

  # GET /engagements/1
  # GET /engagements/1.json
  def show
    @engagement = Engagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @engagement }
    end
  end

  # GET /engagements/new
  # GET /engagements/new.json
  def new
    @engagement = Engagement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @engagement }
    end
  end

  # GET /engagements/1/edit
  def edit
    @engagement = Engagement.find(params[:id])
  end

  # POST /engagements
  # POST /engagements.json
  def create

    engagement = params[:engagement]
    customer = params[:engagement][:customer_id]
    contractor = params[:engagement][:contractor_id]

    @employer = Employer.find(customer)
    @employee = Employee.find(contractor)

    start_date = Date.new engagement["start_week(1i)"].to_i, engagement["start_week(2i)"].to_i, engagement["start_week(3i)"].to_i
    @engagement = Engagement.new(params[:engagement])
    @engagement.start_week = start_date
    @engagement.customer_name = @employer.name
    @engagement.contractor_name = @employee.name
    @engagement.contractor_last_name = @employee.last_name
    @engagement.rate_of_pay = @employee.rate_of_pay
    @engagement.shift = @employee.shift

    respond_to do |format|
      if @engagement.save
        format.html { redirect_to :back, notice: 'Engagement was successfully created.' }
        format.json { render json: @engagement, status: :created, location: @engagement }
      else
        format.html { render action: "new" }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /engagements/1
  # PUT /engagements/1.json
  def update
    engagement = params[:engagement]
    customer = params[:engagement][:customer_id]
    contractor = params[:engagement][:contractor_id]
    start_date = Date.new engagement["start_week(1i)"].to_i, engagement["start_week(2i)"].to_i, engagement["start_week(3i)"].to_i
    end_date = Date.new engagement["end_week(1i)"].to_i, engagement["end_week(2i)"].to_i, engagement["end_week(3i)"].to_i
    @employer = Employer.find(customer)
    @employee = Employee.find(contractor)
    @engagement = Engagement.find(params[:id])


    respond_to do |format|
      if @engagement.update_attributes(:start_week => start_date, :end_week => end_date, :customer_id => @employer.id, :contractor_id => @employee.id, :contractor_name => @employee.name, :contractor_last_name => @employee.last_name, :rate_of_pay => params[:engagement][:rate_of_pay], :shift => params[:engagement][:shift], :customer_name => @employer.name)
        format.html { redirect_to :back, notice: 'Engagement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engagements/1
  # DELETE /engagements/1.json
  def destroy
    @engagement = Engagement.find(params[:id])
    @engagement.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
end

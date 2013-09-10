class UsersController < ApplicationController

	def new
	  @user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    session[:user_id] = @user.id
	    redirect_to employees_path, notice: "Thank you for signing up!"
	  else
	    render "new"
	  end
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])


    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end



end
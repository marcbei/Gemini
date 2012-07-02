class FormsController < ApplicationController
  
  before_filter :signed_in_user

  def new
  	@form = Form.new
  end

  def create

  	@form = Form.new(params[:form])
  	
  	if @form.save

		flash[:success] = "Thank you for your contribution!"
  		redirect_to find_path
  	else
  		flash.now[:error] = "There was a problem with your submission. Please try again."
  		render 'new'
  	end
  end

  def show
    @form = Form.find(params[:id])
  end

  def index
  	@forms = Form.all
  end

    private

    def signed_in_user
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end

end
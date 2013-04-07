class InterestedUsersController < ApplicationController
  # GET /interested_users
  # GET /interested_users.json
  def index
    @interested_users = InterestedUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @interested_users }
    end
  end

  # GET /interested_users/1
  # GET /interested_users/1.json
  def show
    @interested_user = InterestedUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @interested_user }
    end
  end

  # GET /interested_users/new
  # GET /interested_users/new.json
  def new
    @interested_user = InterestedUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @interested_user }
    end
  end

  # GET /interested_users/1/edit
  def edit
    @interested_user = InterestedUser.find(params[:id])
  end

  # POST /interested_users
  # POST /interested_users.json
  def create
     @interested_user = InterestedUser.new(params[:interested_user])

     #@interested_user['referer'] = request.referer

    respond_to do |format|
      if @interested_user.save

        UserMailer.signup_email(@interested_user).deliver
        #UserMailer.signup_user_email(@interested_user).deliver

        format.html { redirect_to beta_path}
        flash[:success] = "Thank you for signing up!"

      else
        format.html { redirect_to beta_path}
        flash[:error] = "Please enter a valid name and email address."
      end
    end
  end

  # PUT /interested_users/1
  # PUT /interested_users/1.json
  def update
    @interested_user = InterestedUser.find(params[:id])

    respond_to do |format|
      if @interested_user.update_attributes(params[:interested_user])
        format.html { redirect_to @interested_user, :notice => 'Interested user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @interested_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /interested_users/1
  # DELETE /interested_users/1.json
  def destroy
    @interested_user = InterestedUser.find(params[:id])
    @interested_user.destroy

    respond_to do |format|
      format.html { redirect_to interested_users_url }
      format.json { head :no_content }
    end
  end
end

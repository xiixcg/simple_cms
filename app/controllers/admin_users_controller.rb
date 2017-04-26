class AdminUsersController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in


  def index
    @adminusers = AdminUser.sorted
  end

  def new
    @adminuser = AdminUser.new
  end

  def create
    @adminuser = AdminUser.new(adminuser_params)
    if @adminuser.save
      flash[:notice] = "Admin user created successfully."
      redirect_to(admin_users_path)
    else
      render('new')
    end
  end

  def edit
    @adminuser = AdminUser.find(params[:id])
  end

  def update
    @adminuser = AdminUser.find(params[:id])
    if @adminuser.update_attributes(adminuser_params)
      flash[:notice] = "Admin user updated successfully."
      redirect_to(admin_users_path)

    else
      render('edit')
    end
  end

  def delete
    @adminuser = AdminUser.find(params[:id])
  end

  def destroy
    @adminuser = AdminUser.find(params[:id])
    @adminuser.destroy
    flash[:notice] = "Admin User '#{@adminuser.username}' destroyed successfully."
    redirect_to(admin_users_path)
  end

  private

  def adminuser_params
    params.require(:admin_user).permit(
      :first_name, 
      :last_name, 
      :email, 
      :username, 
      :password)
  end
end

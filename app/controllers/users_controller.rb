class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def edit_roles
    @user = User.find(params[:id])
    @roles = Role.all
  end

  def update_roles
    @user = User.find(params[:id])
    @user.roles = Role.where(id: params[:user][:role_ids])
    redirect_to edit_roles_user_path, notice: t('.success')
  end
end

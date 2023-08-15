class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only:[:show]

  def index
    @should_render_navbar = true
  end

  def show

  end

  def set_user
    @user = User.find(params[:id])
    @user = User.find_by_id(params[:id])
end

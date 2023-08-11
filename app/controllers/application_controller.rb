class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def index
    @should_render_navbar = false
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
  before_filter :build_nav

  def build_nav
    @nav_items = Section.top_level.ordered.collect { |section| section.title }
  end

  protected
  def not_authenticated
    redirect_to login_path, :alert => "Please login first."
  end
end

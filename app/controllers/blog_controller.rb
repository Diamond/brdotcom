class BlogController < ApplicationController
  skip_before_filter :require_login, :only => [:index]
  
  def index
    @sections = Section.top_level
  end
end

class BlogController < ApplicationController
  def index
    @sections = Section.top_level
  end
end

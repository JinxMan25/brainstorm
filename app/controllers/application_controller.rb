class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
    @mindmap = Mindmap.new
    respond_to do |format|
      format.html
      format.json { render :json => @post }
    end
  end
end

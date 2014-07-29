class NodeController < ApplicationController
  def show
    @mindmap = Mindmap.where(:unique_token => params[:unique_token]).first
    respond_to do |format|
      format.json { render :json => @mindmap 
    end
  end
end

class NodeController < ApplicationController
  def show
    @mindmap = Mindmap.find(params[:unique_token]).first.nodes
    respond_to do |format|
      format.json { render :json => @mindmap } 
    end
  end
end

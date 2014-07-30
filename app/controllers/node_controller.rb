class NodeController < ApplicationController
  def show
    @nodes = Mindmap.find(params[:unique_token]).nodes
    respond_to do |format|
      format.json { render :json => @nodes } 
    end
  end
  def new
    @mindmap = Mindmap.find(params[:unique_token])
    @node = @mindmap.node.build
  end
end

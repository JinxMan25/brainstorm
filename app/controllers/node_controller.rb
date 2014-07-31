class NodeController < ApplicationController
  def show
    @nodes = Mindmap.find(params[:unique_token]).nodes
    @nodes.collect{ |node| { node_id : node.id, target : node.target, source : node.source } }
    respond_to do |format|
      format.json { render :json => @nodes } 
    end
  end
  def new
    @mindmap = Mindmap.find(params[:unique_token])
    @node = @mindmap.node.build
  end
end

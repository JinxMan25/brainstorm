class NodeController < ApplicationController
  def show
    @mindmap = Mindmap.find(params[:unique_token]).nodes
    @nodes = @mindmap.collect{ |node| { :node_id => node.id, :target => node.target, :source => node.source } }
    respond_to do |format|
      format.html
      format.json { render :json => @nodes } 
    end
  end
  def new
    @mindmap = Mindmap.find(params[:unique_token])
    @node = @mindmap.node.build
  end
end

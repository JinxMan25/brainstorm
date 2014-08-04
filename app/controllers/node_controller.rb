class NodeController < ApplicationController
  def show
    @mindmap = Mindmap.find_by_unique_token(params[:unique_token])
    @nodes = @mindmap.nodes.collect{ |node| { :node_id => node.id, :source_body => node.source_body, :target_body => node.target_body, :target => node.target, :source => node.source } }
    byebug
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

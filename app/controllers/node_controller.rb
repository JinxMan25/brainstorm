class NodeController < ApplicationController
  def show
    @mindmap = Mindmap.find_by_unique_token(params[:unique_token])
    respond_to do |format|
      format.html
    end
  end
  def new
    @mindmap = Mindmap.find(params[:unique_token])
    @node = @mindmap.node.build
  end
end

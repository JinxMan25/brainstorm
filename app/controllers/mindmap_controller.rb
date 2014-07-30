class MindmapController < ApplicationController
  def new
    @mindmap = Mindmap.new
    @node = Node.new
  end
  def create

  @mindmap = Mindmap.new(params[:mindmap])
  @node = @mindmap.new(params[:node])
    respond_to do |format| 
      if @mindmap.save
        format.html { redirect_to( 
        format.json { render => :json }
      else
        format.html { render :action => "new" }
        format.json { render :json => @node.errors, :status => :unprocessable_entity }
      end
    end
  end
end

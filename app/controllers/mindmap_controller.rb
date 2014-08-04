class MindmapController < ApplicationController
  def new
    @mindmap = Mindmap.new
    @node = @mindmap.nodes.new
    respond_to do |format|
      format.html
      format.json { render :json => @mindmap }
    end
  end

  def create
    @mindmap = Mindmap.new(params[:mindmap])
    @node = @mindmap.nodes.new(params[:node])
      respond_to do |format| 
        if @mindmap.save
          format.html { redirect_to(mindmap_path(:unique_token => @mindmap.unique_token), :notice => "Mindmap created! Start by clicking on the node to add more nodes!")}
          format.json { render :json => @mindmap, :status => :created, :location => @mindmap }
        else
          format.html { render :action => "new" }
          format.json { render :json => @mindmap.errors, :status => :unprocessable_entity }
        end
      end
  end
end

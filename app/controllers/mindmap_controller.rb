class MindmapController < ApplicationController
  def create
  @mindmap = Mindmap.new(params[:mindmap])
    respond_to do |format| 
      if @mindmap.save
        format.html 
        format.json { render => :json }
      else
        format.html { render :action => "new" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end
end

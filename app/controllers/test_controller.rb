class TestController < ApplicationController
  def force
    @mindmap = Mindmap.first
    nodes = @mindmap.nodes
    @nodes = nodes.map{|node| { target: node.target, source: node.source, source_body: node.source_body, target_body: node.target_body } }
    @mindmap2 = Mindmap.last
    nodes = @mindmap2.nodes
    @nodes2 = nodes.map{|node| { target: node.target, source: node.source, source_body: node.source_body, target_body: node.target_body } }
  end
end

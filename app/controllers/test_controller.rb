class TestController < ApplicationController
  def force
    nodes = Mindmap.first.nodes
    nodes.map{|node| { target: node.target, source: node.source, source_body: node.source_body, target_body: node.target_body } }
    byebug
  end
end

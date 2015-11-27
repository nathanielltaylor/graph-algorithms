# Simple test implementation of topological sort using pre-existing DAG library
# for simplicity
require 'dag'
hockey_prep = DAG.new

undershorts = hockey_prep.add_vertex
compression_shorts = hockey_prep.add_vertex
socks = hockey_prep.add_vertex
hose = hockey_prep.add_vertex
cup = hockey_prep.add_vertex
pants = hockey_prep.add_vertex
sweater = hockey_prep.add_vertex
skates = hockey_prep.add_vertex

hockey_prep.add_edge from: undershorts, to: compression_shorts
hockey_prep.add_edge from: socks, to: hose
hockey_prep.add_edge from: compression_shorts, to: hose
hockey_prep.add_edge from: compression_shorts, to: cup
hockey_prep.add_edge from: hose, to: pants
hockey_prep.add_edge from: cup, to: pants
hockey_prep.add_edge from: pants, to: sweater
hockey_prep.add_edge from: pants, to: skates

hockey_prep.vertices.each do |v|
  puts v.has_path_to?(pants)
  puts v.successors
end

# def topological_sort(dag)
#   in_degree = []
#   dag.vertices.count.times do
#     in_degree << 0
#   end
#
# end
#
# topological_sort(hockey_prep)

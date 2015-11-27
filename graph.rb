class Graph
  def initialize()
      @vertices = {}
  end

  def add_vertex(name, edges)
      @vertices[name] = edges
  end

  def to_s
      return @vertices.inspect
  end
end

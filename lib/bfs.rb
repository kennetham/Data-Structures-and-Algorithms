class BFS
  def initialize(graph, node)
    @graph = graph
    @node = node
    @visited = []
    @edge = {}

    bfs(node)
  end

  public

  def shortest_path(node)
    return unless has_path?(node)
    path = []

    while node != @node do
      path.unshift(node)
      node = @edge[node]
    end

    path.unshift(@node)
  end

  private

  def bfs(node)
    queue = []
    queue << node
    @visited << node

    while queue.any?
      current_node = queue.shift

      current_node.adjacents.each do |adjacent_node|
        next if @visited.include?(adjacent_node)

        queue << adjacent_node
        @visited << adjacent_node
        @edge[adjacent_node] = current_node
      end
    end
  end

  private

  def has_path?(node)
    @visited.include?(node)
  end
end
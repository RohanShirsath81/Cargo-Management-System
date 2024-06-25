graph={
	"A" :  ["B", "C"],
	"B" :  ["D", "E"],
	"C" :  ["F"],
	"D" :  [ ],
	"E" :  ["F"],
	"F" :  [ ]
}

visited = set()

goal = input("Enter the goal:-")
def dfs(visited, graph, node):
    if node not in visited:
        print(node)
        visited.add(node)
        for neighbour in graph[node]:
                print("Neighbour is now",neighbour)
                dfs(visited, graph,neighbour)
                
print("Depth First Search")
dfs(visited, graph,'A')
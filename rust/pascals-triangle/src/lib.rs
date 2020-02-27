pub struct PascalsTriangle {
    graph: Vec<Vec<u32>>
}

impl PascalsTriangle {
    pub fn new(row_count: u32) -> Self {
        let mut graph = (0..row_count)
            .map(|x| (0..1).cycle().take(x as usize + 1).collect::<Vec<u32>>())
            .collect::<Vec<Vec<u32>>>();
        for i in 0..row_count as usize {
            graph[i][0] = 1;
            graph[i][i] = 1;
        }
        for i in 2 .. row_count as usize {
            for j in 1 .. i {
                graph[i][j] = graph[i - 1][j - 1] + graph[i - 1][j];
            }
        }
        Self {
            graph
        }
    }

    pub fn rows(&self) -> Vec<Vec<u32>> {
        self.graph.clone()
    }
}
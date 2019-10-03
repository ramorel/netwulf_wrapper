netwulf <- function(network, type = "png") {
  
  require(reticulate)
  
  tmp_dir <- tempdir()
  tf <- tempfile(tmpdir = tmp_dir)
  
  write_graph(network, tf, format = "graphml")
  
  nx <- import("networkx")
  wulf <- import("netwulf")
  plt <- import("matplotlib.pyplot")
  
  g <- nx$read_graphml(tf)
  
  config <- wulf$visualize(g)
  
  fig <- wulf$draw_netwulf(config[[1]])
  
  if (save == TRUE) {
    fn <- paste("fig", type, sep = ".")
    
    plt$savefig(fn) 
  }
  
  plt$close()
  
}

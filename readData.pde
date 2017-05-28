// Read and store nodes and edges of network from a Gephi gexf file.
String[] label=new String[0];
float betweenessCentrality[]=new float[0];
float x[]=new float[0];
float y[]=new float[0];



void readData(String gexfFile)
{
  XML graph = loadXML(gexfFile).getChild("graph");
  XML[] nodes = graph.getChildren("nodes/node");
  
  //Creating a blank table for nodes
  nodeTable = new Table();
  nodeTable.addColumn("id");
  nodeTable.addColumn("label");
  nodeTable.addColumn("x");
  nodeTable.addColumn("y");
  nodeTable.addColumn("betweenessCentrality");
  nodeTable.addColumn("size");
  nodeTable.addColumn("modularity");

  //Creating blank table for edges
  edgeTable = new Table();
  edgeTable.addColumn("id1");
  edgeTable.addColumn("id2");
  edgeTable.addColumn("weight");
 
  
  for (XML node : nodes)
  {
    int id = node.getInt("id");
    label = (String[])append(label,node.getString("label"));
    betweenessCentrality = (float[])append(betweenessCentrality,node.getFloat("betweenesscentrality"));
    x = (float[])append(x,node.getChildren("viz:position")[0].getFloat("x"));
    y = (float[])append(y,node.getChildren("viz:position")[0].getFloat("y"));
    XML[] children = node.getChildren("attvalues");
    
    TableRow newRow = nodeTable.addRow();
    newRow.setString("id",node.getString("id"));
    newRow.setString("label", node.getString("label"));
    newRow.setFloat("x", node.getChildren("viz:position")[0].getFloat("x"));
    newRow.setFloat("y",-(node.getChildren("viz:position")[0].getFloat("y")));
    for(XML child :children){
      newRow.setFloat("betweenessCentrality",child.getChildren("attvalue")[3].getFloat("value"));
      newRow.setFloat("modularity",child.getChildren("attvalue")[4].getInt("value"));
        }
    newRow.setFloat("size",node.getChildren("viz:size")[0].getFloat("value"));

    
  }

  XML[] edges = graph.getChildren("edges/edge");
  for (XML edge : edges)
  {
    String id1 = edge.getString("source");
    String id2 = edge.getString("target");
    float weight = edge.getFloat("weight",1);    // Defaults to weight of 1 if not explicit.
    
    TableRow newRow = edgeTable.addRow();
    newRow.setString("id1",edge.getString("source"));
    newRow.setString("id2",edge.getString("target"));
    newRow.setFloat("weight",edge.getFloat("weight",1));
    
  }
  
    for (int row=0; row<nodeTable.getRowCount();row++)
  {
    XMin= min(XMin,nodeTable.getFloat(row,"x"));
    XMax= max(XMax,nodeTable.getFloat(row,"x")); 
    YMin= min(YMin,nodeTable.getFloat(row,"y"));
    YMax= max(YMax,nodeTable.getFloat(row,"y"));
    betweenMax= max(betweenMax,nodeTable.getFloat(row,"betweenessCentrality"));
    betweenMin= min(betweenMin,nodeTable.getFloat(row,"betweenessCentrality"));
  }

  
  
  for (int i=0; i<nodeTable.getRowCount();i++)
  {
    TableRow Row = nodeTable.getRow(i);
    Row.setFloat("x", map(nodeTable.getFloat(i,"x"),XMin,XMax,50,700));
    Row.setFloat("y", map(nodeTable.getFloat(i,"y"),YMin,YMax,600,100));
  }
}
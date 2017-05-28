// Draws a line representing edges between nodes.
void drawEdge(String id1, String id2, int weights)
{
  
  // Fine the node positions of the two nodes to link
  TableRow node1 = nodeTable.findRow(id1, "id");
  TableRow node2 = nodeTable.findRow(id2, "id");
  float p1x = node1.getFloat("x");
  float p1y = node1.getFloat("y");
  float p2x = node2.getFloat("x");
  float p2y = node2.getFloat("y");
  float normWeights= map(weights,1,170,10,255);
  if (edgeHighlight == true)
  {
  stroke(0,0,0,90);
  strokeWeight(4);
  edgeHighlight = false;
  }
  else
  {
  stroke(0,0,0,normWeights); //colormode is HSB
  }
  noFill();
  strokeWeight(2);
  drawCurve(p1x,p1y,p2x,p2y);
}

// Creates an asymmetric curve from (x1,y1) to (x2,y2).
void drawCurve(float x1, float y1, float x2, float y2)
{
  float curveAngle = radians(-90);
  float x = (x1-x2)/4;
  float y = (y1-y2)/4;

  float cx = x2 + x*cos(curveAngle) - y*sin(curveAngle);
  float cy = y2 + y*cos(curveAngle) + x*sin(curveAngle);
  bezier(x1, y1, cx, cy, x2, y2, x2, y2);
}
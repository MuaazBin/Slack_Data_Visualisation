PImage img;
PImage logo;
float XMin;
float XMax;
float YMin;
float YMax;
float betweenMax;
float betweenMin;
int itemToHighlight;  // Index of highlighted item.
int channelHighlight; //index of channel selected
Table nodeTable; //read from Graph file in readData()
Table edgeTable;
Table timesheet;
Table channelsTable;
//Each channels own table(
Table analyticsTable;
Table financeTable;
Table hrTable;
Table optimizationTable;
Table projmTable;
Table projvaTable;
Table randomTable;
Table rndTable;
Table routeTable;
Table volunteerTable;


TableRow rowTime;
TableRow rowChannel;
TableRow rowNode_channel;
int i;
float nodeXpos;
float nodeYpos;


boolean edgeHighlight = false;



void setup()
{
    size(1600,700);
    img= loadImage("wallpaper.jpg");
    textAlign(CENTER,CENTER);
    itemToHighlight = -1;
    channelHighlight=-1;
  //readData("Untitled_Fruch.gexf");
  timesheet = loadTable("timesheet.csv","header");
  channelsTable = loadTable("channel.csv","header");
  analyticsTable = loadTable("analyticsBB.csv","header");//reading slack's analytics channel 
  financeTable =   loadTable("finance.csv","header");//reading slack's finance channel 
  hrTable = loadTable("hr.csv","header");//reading slack's hr channel
  optimizationTable = loadTable("optimization.csv","header");//reading slack's optimization channel 
  projmTable = loadTable("projm.csv","header");//reading slack's Project-M channel
  projvaTable = loadTable("projva.csv","header");//reading slack's Project VA channel 
  randomTable = loadTable("random.csv","header");//reading slack's Random channel 
  rndTable = loadTable("rnd.csv","header");//reading slack's R&D channel
  routeTable = loadTable("route.csv","header");//reading slack's Route Planning channel 
  volunteerTable = loadTable("volunteer.csv","header");//reading slack's Volunteer-work channel 
 
}


void draw()
{
  colorMode(RGB);
  background(#fffff0);// Ivory canvas for sketch
  //image(img,0,0,width,height);
  if (channelHighlight==0)
  {
    readData("analytics.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: Analytics",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
    if (channelHighlight==1)//read finance graph file
  {
    readData("finance.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: Finance",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
    if (channelHighlight==2)
  {
    readData("hr.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: HR",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
    if (channelHighlight==3)
  {
    readData("optimization.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: Optimization",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
    if (channelHighlight==4)
  {
    readData("projm.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: Project-M",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
    if (channelHighlight==5)
  {
    readData("projva.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: Project-VA",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
    if (channelHighlight==6)
  {
    readData("rnd.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: R&D",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
    if (channelHighlight==7)
  {
    readData("random.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: Random",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
      if (channelHighlight==8)
  {
    readData("route.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: Route-Planning",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  
      if (channelHighlight==9)
  {
    readData("volunteer.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(35,350);
    rotate(-HALF_PI);
    text("Channel: Volunteer Work",0,0);
    popMatrix();
    rotate(0);
    fill(#333F48);
    ellipse(0,700,250,250);
    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("MAIN",15,660);
  }
  if (channelHighlight==-1)
  {
    readData("Untitled_Fruch.gexf");
    fill(0,90);
    textSize(30);
    textAlign(CENTER,CENTER);
    pushMatrix();//labelling vertical axis
    translate(25,350);
    rotate(-HALF_PI);
    text("Complete Organization",0,0);
    popMatrix();
    rotate(0);  
   
  }
 

 
  for (TableRow row : edgeTable.rows())
  {
    String id1    = row.getString("id1");
    String id2    = row.getString("id2");
    int weights = row.getInt("weight");
    drawEdge(id1,id2,weights);
  }

  for (TableRow row: nodeTable.rows())
  {
    drawNode(row.getString("label"),
             row.getFloat("x"), row.getFloat("y"),row.getFloat("betweenessCentrality"),row.getFloat("size"),row.getInt("modularity"));
  }
  
  if (itemToHighlight==-1)
  {
  translate(0,0);
  fill(0,150);
  textSize(100);
  text("Click on",900,150);
  text("the",1000,250);
  text("Node",900, 350);
  logo = loadImage("slacklogo.png");
  textSize(25);
  image(logo, 810, 435,35,35);
  text("Tech Start-Up's Slack",940,420);
  text("Communication Network", 1000,450);
  fill(#B2FF00,90);
  ellipse(1500,350, 350,350);
  fill(#00BDFF,90);
  ellipse(1500,0, 350,350);
  fill(#FF0000,90);
  ellipse(1500,700, 350,350);
  
  
  }
    
  if((mouseX > 0) && (mouseX < (100)) &&
       (mouseY > 600) && (channelHighlight>-1))
      {
         ellipse(mouseX,mouseY,50,50);
         fill(255);
         fill(#333F48,90);
         ellipse(0,700,270,270);
         if (mousePressed)
         {
           channelHighlight=-1;
         }
      }
 
  for (int i=0; i<nodeTable.getRowCount();i++){
   if (itemToHighlight == i) 
    {
      fill(0,150);
      textSize(40);
      text(nodeTable.getString(i,"label"),150,70);
      fill(#00BDFF,90);
      rect(920, 200, 100, 100, 7);
      rect(1053.33333333, 200, 100, 100, 7);
      
      fill(0,90);
      if (channelHighlight==-1)
      {
        text(nf(map(nodeTable.getFloat(i,"betweenessCentrality"),betweenMin,betweenMax,0,1),1,2),970, 250);
      }
      else
      {
        text(nf(nodeTable.getFloat(i,"betweenessCentrality"),1,2),970, 250);
      }
      text(nf(map(nodeTable.getFloat(i,"size"),10,50,0,1),1,2),1103.333333, 250);
      int modularity= nodeTable.getInt(i,"modularity");
      if (modularity==0){c = #FF0000 ;}// red
      if (modularity== 1) {c = #00BDFF;} // blue  
      if (modularity==2) {c = #FFC400;}// yellow
      if (modularity==3) {c = #B2FF00;}//green
      if (modularity==4) {c = #CBC5C5;}//grey
      if (modularity==5) {c = #BF11AE;}//purple
  
      fill(c, 90);
      rect(1186.66666, 200, 100, 100, 7);
      fill(0,90);
      text(modularity,1236.66667, 250);
      textSize(10);
      fill(0);
      text("Betweenes",970, 210);
      text("Degree",1103.333333, 210);
      text("Modularity",1236.66667, 210);
      text("*Scaled between 0 and 1",1030,305);
      
      fill(0,90);
      int nodeid1= nodeTable.getInt(i,"id");
      nodeXpos= nodeTable.getFloat(i,"x");
      nodeYpos= nodeTable.getFloat(i,"y");
      ellipse(nodeXpos,nodeYpos,nodeTable.getFloat(i,"size"),nodeTable.getFloat(i,"size"));
      
       for (TableRow row : edgeTable.rows())
          {
            String id1    = row.getString("id1");
            String id2    = row.getString("id2");
            
             if (int(id1) ==nodeid1)
             {  
                edgeHighlight = true;
                drawEdge(id1,id2,255);
             }
          }
      rowTime = timesheet.findRow(nodeTable.getString(i,"id"),"id"); 
      rowChannel = channelsTable.findRow(nodeTable.getString(i,"id"),"id"); 
       
      lineGraph();
      barGraph();
      
      
    }
    
  }
  
}

void mouseClicked() {
  itemToHighlight=-1;
  for ( i=0; i<nodeTable.getRowCount();i++)
  {
    if (dist(mouseX,mouseY,nodeTable.getFloat(i,"x"),nodeTable.getFloat(i,"y")) < 20)
    {
      itemToHighlight = i;
    }
  }
}
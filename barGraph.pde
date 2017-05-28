String[] channels = {"Analytics", "Finance", "HR", "Optimization", "Project-M", "Project-VA", "R&D","Random","Route-Project","Volunteer Work"};
int channel;
void barGraph()
{ 
  smooth();
  textSize(15);
  strokeWeight(1);
  stroke(126);
  line(900,350,900,640);//vertical axis
  line(900,640,1300,640);//horizontal axis
  fill(0);
  text("Activity",1100,670);
  pushMatrix();//labelling vertical axis
  translate(880,495);
  rotate(-HALF_PI);
  text("Channels",0,0);
  popMatrix();
  rotate(0);
  strokeWeight(0.2);
  fill(0,150);
  line(950,350,950,650);text("75",950,650);
  line(1000,350,1000,650);text("150",1000,650);
  line(1050,350,1050,650);text("225",1050,650);
  line(1100,350,1100,650);text("300",1100,650);
  line(1150,350,1150,650);text("375",1150,650);
  line(1200,350,1200,650);text("450",1200,650);
  line(1250,350,1250,650);text("525",1250,650);
  line(1300,350,1300,650);text("600",1300,650);
  textSize(10);
  text("Note: Bar chart and Line graph always portray the complete organisation based metrics",1100,690);
  
  for(int i = 0; i < channels.length; i++)
  {
   int col=i+2;
   int y= 350 + (30 * i);
   textSize(15);
   textAlign(LEFT,TOP);
   fill(0);
   strokeWeight(2);
   text(channels[i], 900,y); 
   float sizebar = map(rowChannel.getFloat(col), 0, 600, 0, 400);
   noStroke();
   
   if((mouseX > 900) && (mouseX < (900+sizebar)) &&
       (mouseY > y) && (mouseY < (y+20)))
      {
         ellipse(mouseX,mouseY,5,5);
         fill(255);
         rect(mouseX,mouseY,50,20);
         fill(0);
         text(nf(sizebar,0,1),mouseX+10,mouseY-5);
         fill(#CBC5C5,90);
         node_channel();
           if (mousePressed)
             {
               channelHighlight = i;
               println(channelHighlight);
             }
       }
       else
       {
         fill(#00BDFF,90);
       }
   rectMode(CORNER);
   rect(900,y,sizebar,20);
   
  }
}
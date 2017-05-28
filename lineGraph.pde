void lineGraph()
{

strokeWeight(2);
TableRow rowAvg;
rowAvg = timesheet.findRow("101","id"); 
beginShape();    // Start a line shape for data
  for (int i=0; i<24; i++)
  {   
      noFill();
      int col=i+2;
      stroke(#00BDFF,90);
      strokeWeight(2);
            // Plot each coordinate pair in the line.
      float x = map(i, 0, 23, 900, 1300);
      float y = map(rowTime.getFloat(col), 0, 158, 150, 50);
      vertex(x, y);
      ellipse(x,y,3,3);
      if((mouseX > 900) && (mouseX < 1300) &&
       (mouseY > 50) && (mouseY < 150))
       {
            
       int z = floor(map(mouseX, 900, 1300, 0, 24));
       float a = floor(map(rowTime.getFloat(z+2), 0, 158, 150, 50));
       ellipse(mouseX,a,5,5);
       fill(0);  //set font to black
       text(z, 1000, 40);
       text("Hrs",1015,40);
       noFill();      
       text(nf(rowTime.getFloat(z+2),0,0), 1070,40);
       text("messages",1105,40);
       }

  
  }
endShape();    // End the line shape.
  
beginShape(); // Start a line shape for average
  for (int i=0; i<24; i++)
  {   
      strokeWeight(1);
      int col=i+2;
      stroke(0,90);    
      // Plot each coordinate pair in the line.
      float x = map(float(i), 0, 23, 900, 1300);
      float y2=map(rowAvg.getFloat(col),0, 158, 150, 50);
      vertex(x, y2);
      fill(0,90);
      rectMode(CENTER);
      rect(x,y2,3,3);
      noFill();
      rectMode(CORNER);
  
  }
endShape();    // End the line shape. 


  for (int i=0; i<24; i++)
  {   
      
      float col=i*16.666666666666666667;
      float com=i*4.16666666667;
      stroke(126);
      strokeWeight(0.2);
      fill(0,150);
      line(900+(col),50,900+(col),150);
      textSize(10);
      text(i,900+(col),160);
      line(900,50+com,1300,50+com);
  
  }
  text("Average",1325,145);
  fill(0);
  text("Hours",1100,170);
  pushMatrix();//labelling vertical axis
  translate(880,100);
  rotate(-HALF_PI);
  text("Message Frequency",0,0);
  popMatrix();
  rotate(0);
  
  pushMatrix();//labelling vertical axis
  translate(870,100);
  rotate(-HALF_PI);
  text("Average",0,0);
  popMatrix();
  rotate(0);

}
void node_channel()   //int y= 350 + (30 * i);
{ 
  
  //reading node strengths from analytics table if near analytics bar
  if ((mouseY >350) && (mouseY<380))
  {
    for (int row=0; row<analyticsTable.getRowCount();row++)
     {
       
       rowNode_channel = analyticsTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= analyticsTable.getString(row,"label");
       textSize(10);
       fill(0);      
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,138,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       drawCurve(800,row *15,nodeXpos,nodeYpos);
       text(labels,800,row *15);
       fill(#CBC5C5,90);
       //float theta= row*0.05;
       
       //rowNode_channel = analyticsTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       //String labels= analyticsTable.getString(row,"label");
       //textSize(10);
       //fill(0);
       //float x = r * cos(theta) + 400;
       //float y = r * sin(theta) + 300;
       
       //float weight= rowNode_channel.getFloat(row+2);
       //float mweight= map(weight,0,138,0,15);
       //stroke(0,90);
       //strokeWeight(mweight);
       //noFill();
       //drawCurve(x,y,nodeXpos,nodeYpos);
       //text(labels,x,y);
       //fill(#CBC5C5,90);
     }
  }
  
  //reading node strengths from finance table if near finance bar
  if ((mouseY >380) && (mouseY<410))
  {
    for (int row=0; row<financeTable.getRowCount();row++)
     {
       rowNode_channel = financeTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= financeTable.getString(row,"label");
       textSize(10);
       fill(0);
       text(labels,800,row *15);
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,20,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       drawCurve(800,row *15,nodeXpos,nodeYpos);
       fill(#CBC5C5,90);
     }
  }
  
  //reading node strengths from hr table if near HR bar
  if ((mouseY >410) && (mouseY<440))
  {
    for (int row=0; row<hrTable.getRowCount();row++)
     {
       rowNode_channel = hrTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= hrTable.getString(row,"label");
       textSize(10);
       fill(0);
       text(labels,800,row *15);
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,32,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       drawCurve(800,row *15,nodeXpos,nodeYpos);
       fill(#CBC5C5,90);
     }
  }
  
  //reading node strengths from optimization table if near Optimization bar
  if ((mouseY >440) && (mouseY<470))
  {
    for (int row=0; row<optimizationTable.getRowCount();row++)
     {
       rowNode_channel = optimizationTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= optimizationTable.getString(row,"label");
       textSize(10);
       fill(0);
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,60,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
        if (row*15<690)
       {
         drawCurve(800,row *15,nodeXpos,nodeYpos);
         text(labels,800,row *15);
       }
       else
       {
         
         int shift = 15*(row-46);
         pushMatrix();//labelling vertical axis
         translate(750-shift,650);
         rotate(-HALF_PI);
         text(labels,0,0);
         popMatrix();
         rotate(0);
         drawCurve(750-shift,650,nodeXpos,nodeYpos);
       }
       
       fill(#CBC5C5,90);

     }
  }
  
  
   //reading node strengths from Project M table if near Project-M bar
  if ((mouseY >470) && (mouseY<500))
  {
    for (int row=0; row<projmTable.getRowCount();row++)
     {
       rowNode_channel = projmTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= projmTable.getString(row,"label");
       textSize(10);
       fill(0);
       text(labels,800,row *15);
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,22,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       drawCurve(800,row *15,nodeXpos,nodeYpos);
       fill(#CBC5C5,90);
     }
  }
  
  
   //reading node strengths from Project VA table if near Project-VA bar
  if ((mouseY >500) && (mouseY<530))
  {
    for (int row=0; row<projvaTable.getRowCount();row++)
     {
       rowNode_channel = projvaTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= projvaTable.getString(row,"label");
       textSize(10);
       fill(0);
       text(labels,800,row *15);
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,19,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       drawCurve(800,row *15,nodeXpos,nodeYpos);
       fill(#CBC5C5,90);
     }
  }
  
  
  
  //reading node strengths from Random table if near random bar
  if ((mouseY >530) && (mouseY<560))
  {
    for (int row=0; row<rndTable.getRowCount();row++)
     {
       rowNode_channel = rndTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= rndTable.getString(row,"label");
       textSize(10);
       fill(0);
       text(labels,800,row *15);
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,29,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       drawCurve(800,row *15,nodeXpos,nodeYpos);
       fill(#CBC5C5,90);
     }
  }
  
  
  
  //reading node strengths from Random table if near random bar
  if ((mouseY >560) && (mouseY<590))
  {
    for (int row=0; row<randomTable.getRowCount();row++)
     {
       rowNode_channel = randomTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= randomTable.getString(row,"label");
       textSize(10);
       fill(0);
       
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,124,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       if (row*15<690)
       {
         drawCurve(800,row *15,nodeXpos,nodeYpos);
         text(labels,800,row *15);
       }
       else
       {
         
         int shift = 15*(row-46);
         
         pushMatrix();//labelling vertical axis
         translate(750-shift,650);
         rotate(-HALF_PI);
         text(labels,0,0);
         popMatrix();
         rotate(0);
         drawCurve(750-shift,650,nodeXpos,nodeYpos);
       }
       
       fill(#CBC5C5,90);
     }
  }
  
  
    //reading node strengths from Random table if near random bar
  if ((mouseY >590) && (mouseY<620))
  {
    for (int row=0; row<routeTable.getRowCount();row++)
     {
       rowNode_channel = routeTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= routeTable.getString(row,"label");
       textSize(10);
       fill(0);
       text(labels,800,row *15);
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,124,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       drawCurve(800,row *15,nodeXpos,nodeYpos);
       fill(#CBC5C5,90);
     }
  }
  
  
  
   //reading node strengths from Random table if near random bar
  if ((mouseY >620) && (mouseY<650))
  {
    for (int row=0; row<volunteerTable.getRowCount();row++)
     {
       rowNode_channel = volunteerTable.findRow(nodeTable.getString(itemToHighlight,"id"),"id");
       String labels= volunteerTable.getString(row,"label");
       textSize(10);
       fill(0);
       text(labels,800,row *15);
       float weight= rowNode_channel.getFloat(row+2);
       float mweight= map(weight,0,60,0,15);
       stroke(0,90);
       strokeWeight(mweight);
       noFill();
       drawCurve(800,row *15,nodeXpos,nodeYpos);
       fill(#CBC5C5,90);
     }
  }
  
  
}
   
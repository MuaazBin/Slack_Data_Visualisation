// Symbolises an author in the network.
color c;
void drawNode(String authorName, float x, float y, float betweeness, float size, int modularity )
{
  noStroke();
  colorMode(RGB);
  textSize(15);
  //float nWidth = max(50,textWidth(authorName)+5);
  //float nHeight = 2*(textAscent()+textDescent()+5);
  //ellipse(x,y,nWidth,nHeight);
  float r = map(size,10,50,10,40);
  float between=map(betweeness,betweenMin,betweenMax,150,230);
 
  
  if (modularity==0){c = #FF0000 ;}// red
  if (modularity== 1) {c = #00BDFF;} // blue  
  if (modularity==2) {c = #FFC400;}// yellow
  if (modularity==3) {c = #B2FF00;}//green
  if (modularity==4) {c = #CBC5C5;}//grey
  if (modularity==5) {c = #BF11AE;}//purple
  
  fill(c, between);
  

  
  ellipse(x,y,r,r);
  
  
  if (size>30){
    fill(0);
    textAlign(CENTER,CENTER);
    text(authorName,x,y);}
  
  if (between>200){
    fill(0);
    textAlign(CENTER,CENTER);
    text(authorName,x,y);
    }
  fill(0);
  ellipse(x, y, 2,2);
}
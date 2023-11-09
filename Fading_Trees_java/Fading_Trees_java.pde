color leafColour,trunkColour;
float yPos;
float v;
float x;
float y;
 
void setup()
{
  size(800, 400);
  noStroke();
  leafColour  = color(82, 144, 97);
  trunkColour = color(95, 57, 26);
  
  yPos = 600;
  v = 0;
  
  background(157, 238, 247);   // Sky
  fill(156, 245, 170);         // Ground.
  rect(0, height/2.5, width, height/1.5);
  
  for (float i=0; i<4; i++) {
    v+=75;
    for (float xPos=50; xPos<width; xPos=xPos+v)
    {
      drawTree(xPos,yPos,x,y);
    }
    x -= 3;
    y -= 100;
  }
}
 
void draw()
{

  }
 
// Draws a single tree at the given position.
void drawTree(float treeX, float treeY, float leafSize, float trunkSize)
{
  fill(trunkColour);
  rect(treeX, treeY, leafSize+20, trunkSize+70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, leafSize+70, trunkSize+90);
}

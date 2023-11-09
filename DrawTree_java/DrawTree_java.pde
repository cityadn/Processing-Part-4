void setup()
{
  size(400, 400);
  noStroke();
}

void draw()
{
  color skyColour = color(157, 238, 247);
  color groundColour = color(156, 245, 178);

  float treeX = 0;
  float treeY = 165;
  
  treeX = 0;
  treeY = 165;
  
  background(skyColour);
  fill(groundColour);
  rect(0, height/2, width, height/2);
  
  // Draw first tree
  treeX += 100;
  treeY -= 30;
  drawTree(treeX, treeY, 20);
  
  // Draw second tree to the right and down a bit
  treeX += 100;
  treeY -= 30;
  drawTree(treeX, treeY, 110);
  
  // Draw second tree to the right and down a bit
  treeX += 100;
  treeY -= 30;
  drawTree(treeX, treeY, 70);
  
}

void drawTree(float treeX, float treeY, float leafWidth) {
  color leafColour = leafColour();
  color trunkColour = trunkColour();

  fill(trunkColour);
  rect(treeX, treeY, 20, 70); // drawing trunk
  fill(leafColour);
  ellipse(treeX+10, treeY-30, leafWidth, 90); //drawing leafs
  println(treeX);
}

color leafColour() {
  color c = color(82, 144, 97);
  return c;
}

color trunkColour(){
  return color(95, 57, 26);
}

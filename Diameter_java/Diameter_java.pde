float[] diameters;            // Declare the array of floats
 
void setup()
{
  size(1000,200);
  fill(180,50,50,20);
  noStroke();
 
  diameters = new float[500];
  for (int i=0; i<diameters.length; i=i+1)
  {
    diameters[i] = random(1,50);    // Each diameter is a random number between 1 and 50.
  }
}
 
void draw()
{
  background(255);
  float xPos = 0;
 
  /* for (int i=0; i<diameters.length; i = i+1)
  {
    circle(xPos,100,diameters[i]);
    xPos = xPos + 2;
  } */
  
  for (float diameter : diameters)
  {
    circle(xPos,100,diameter);
    xPos = xPos + 2;
  }
}

/*The line for (float diameter : diameters) should be read as 
"for each float variable diameter in the the array diameters..." 
In other words, the line takes each element in the diameters 
array and places it in a loop variable called diameter.*/

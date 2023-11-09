float ran;
 
void setup()
{
  size(200, 200);
  fill(0);
  textSize(48);
  textAlign(CENTER);
 
  ran = random(6);
}
 
void draw()
{
  background(255);
  String message="";
 
  if (ran >= 0 && ran < 1)
  {
    message = "ONE";
  }
 
  if (ran >= 1 && ran < 2)
  {
    message = "TWO";
  }
 
  if (ran >= 2 && ran < 3)
  {
    message = "THREE";
  }
 
  // Can you write the code for the remaining cases?
 
  text(message, width/2, height/2);
}

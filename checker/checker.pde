int counter = 100;
boolean clicked= false;
void setup()
{
  size(600,400);
  for(int w = 0; w<width;w+=counter)
  {
    for(int h = 0; h<height;h+=counter)
    {
      fill(random(255));
      rect(w,h,counter,counter);
      /*line(0,h,width,h);
      line(w,0,w,height);*/
    }
    
  }
  
}
void draw()
{
  
  if(clicked)
  {
    int newX = mouseX/counter;
    int newY = mouseY/counter;
    fill(random(255),0,0);
    rect(newX*counter,newY*counter,counter,counter);
    println(newX+ " and " +newY);
    clicked = false;
  }
}
void mouseClicked()
{
  clicked= true;
}

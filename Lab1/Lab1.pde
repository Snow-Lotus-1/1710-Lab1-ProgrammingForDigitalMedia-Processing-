color bgColor = color(75, 100, 250);
float circleSize = 50;
int num = 0;
int r = 0;
int g = 100;
int b = 50;
void setup() {
  size(800, 600); // P2D does not work for me it prevents me from running
  background(bgColor);
}

void draw() {  
  num++;
  
  if (mousePressed) {
    ellipseMode(CENTER);

    r = r + num;
    g = g + num;
    b = b + num;
    
    resetColour();
    
    fill(r, g, b);  
    stroke(0, 127, 255);
    line(mouseX, mouseY, pmouseX, pmouseY);
    ellipse(mouseX, mouseY, circleSize, circleSize);   
    ellipse(mouseX + (mouseX-pmouseX), mouseY + (mouseY-pmouseY), circleSize, circleSize);
    num = 0;
    circleSize = circleSize + 0.1;
    if (circleSize == 75)
    {
        circleSize = 50;
    }
  }
  else
  {
    clear();
    background(bgColor);
  }
}

void resetColour()
{
   if (r == 255)
    {
       r = 0; 
    }
    else if (g == 255)
    {
       g = 100; 
    }
    else if (b == 255)
    {
       b = 50; 
    } 
}

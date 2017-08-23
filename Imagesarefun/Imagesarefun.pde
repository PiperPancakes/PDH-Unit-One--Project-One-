

float x= 1000;
PImage dino;
float y= 1000;
PImage maze;
int yo= 85;
int xo= 20;
color bgColor;
color c;
color r;
color g;
color b;
int e= 3;
void setup()
{
  size (800, 800);
  maze= loadImage("maze.png");
  x = width;
  y = height;
  maze.resize(800, 800);



  dino= loadImage("dino.png");

  bgColor = color(255, 0, 0);
}

void draw()
{
  background(bgColor);
  imageMode(CORNER);
  image(maze, 0, 0);    

  image(maze, 800, 800);
  color c =get(xo, yo); 
  println(red(c), green(c), blue(c));

if (red(get(xo, yo)) < 5) 
  {
  yo = 100;
  xo = 20; 
  }
 
imageMode(CENTER);
  image(dino, xo, yo, 50, 50);
  ellipse (xo,yo,5,5);
}

void keyPressed()
{
  if (key == 'w')
  {
    yo = yo -5;
  }

  if (key == 'a')
  {
    xo = xo- 5;
  }
  if (key == 'd')
  {
    xo= xo+ 5;
  }

  if (key == 's')
  {
    yo = yo + 5;
  }

  if (key == ' ')

  {
    bgColor=color(random(255), random(255), random(255));
  }

  
}
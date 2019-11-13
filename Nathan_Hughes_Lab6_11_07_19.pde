
// Nathan Hughes
// Lab 6
// 11/07/2019

// This program Draws a creature if you make a mouse press the creature will start
//movement or change direction if still moving 
//if key pessed stop all movement 


float startx = 200;//creat a staring place
float starty = 600;
float moveY = 0;//var for movement
float moveX = 0;
float jiggle = -.089;//jiggle 
// set up environment
void setup () 
{
  size(720, 800);
  ellipseMode(CENTER);
  rectMode(CENTER);
}

void draw() {
  background(#30EDDC);//set background
  Zoogarms(startx-10, starty, startx+10, starty);//zoog arms left x,y right x,y
  Zooglegs(startx-10, starty+50, startx+10, starty+50);//zoog legs left x,y right x,y
  Zoogbody(0, startx, starty);//zoog body (color,x,y)
  Zooghead(startx, starty-35);//zoog head
  Zoogeyes(#ED0717, startx-12, starty-35, startx+9, starty-35); //zoog eyes (color, left x,y right x,y)
  Zoogirisis(200, startx-12, starty-35, startx+9, starty-35);//zoog Irisisis (color, left x,y right x,y)
  Zoogpupils(0, startx-12, starty-35, startx+9, starty-35);//zoog pupils (color, left x,y right x,y)
  Zoogmouth(startx, starty+26);//zoog mouth
  Zooghat(startx, starty-75);// zoog hat
  Balloon(#FA1414, startx-45, starty-85);// make a baloon
  sun(#FAD812);// sun can't live without it right
  starty = starty - moveY;//move zoog up and down
  startx = startx + moveX;//move zoog to move left or right
  if (keyPressed)//stop all movement
  {
    moveX = 0;
    moveY = 0;
  }
  if (mousePressed)//begin some movement or change it 
  {
    moveX = random(-2, 2);
    moveY = random(-2, 2);//start the movement
  }
  // startx = startx + (jiggle * -1);//make zook shake left to right
  //prfloatln(jiggle);
  newsletter(startx, starty, startx, starty);
  if (starty > (height-115) || (starty <110))//stop movement at the top and bottom of screen
  {
    moveY = moveY * -1;
  } 
  if (startx >= (width-50) || (startx <= 55))//stop movement at the edges of screen
  {
    moveX = moveX * -1;
  }
}
void Zooglegs(float left_x, float left_y, float right_x, float right_y)// function to draws zoog legs
{
  fill(255);
  stroke(0);
  line(left_x, left_y, left_x-14, left_y+80);//left leg
  line(right_x, right_y, right_x+16, right_y+80);  //right leg
}

void Zoogbody(color c1, float body_x, float body_y)//draws zoog body
{
  stroke(0);
  fill(c1);//color the body
  rect(body_x, body_y, 20, 100);// Body
}
void Zooghead(float x, float y)//draws a zoog head
{
  fill(255);
  ellipse(x, y, 60, 60);// Head
}

void Zoogeyes(color c1, float left_x, float left_y, float right_x, float right_y)// Eyes
{ 
  fill(255); 
  ellipse(left_x, left_y, 16, 32); //outside left eye
  ellipse(right_x, right_y, 16, 32);//outside right eye
}
void Zoogirisis(color c1, float left_x, float left_y, float right_x, float right_y)// Eyes
{ 
  fill(c1);
  ellipse(left_x, left_y, 8, 8);//left irisis
  ellipse(right_x, right_y, 8, 8);//right iris
}
void Zoogpupils(color c1, float left_x, float left_y, float right_x, float right_y)// Eyes
{ 
  fill(c1);
  ellipse(left_x, left_y, 3, 3);//left pupils
  ellipse(right_x, right_y, 3, 3);//right pupils
}

void Zoogmouth(float x, float y)//draw a zoog mouth
{
  fill(255, 0, 0);//mouth to red
  curve(x-15, y-47, x-15, y-42, x+10, y-38, x-20, y-102); //draws a mouth
}

void Zooghat(float x, float y)//draw a zoog hat
{
  fill(0);
  square(x, y, 40);//body of the hat
  line(x-35, y+20, x+35, y+20);//bill of the hat
}

void Zoogarms(float left_x, float left_y, float right_x, float right_y)//zoog arms
{
  stroke(0);//arm color
  line(left_x, left_y, left_x-35, left_y-10);//left arm
  line(right_x, right_y, right_x+35, right_y-10);//right arm
}

void Balloon(color c1, float x, float y)//zoog balloon
{
  fill(c1);//color balloon
  line(x, y, x, y+75);
  ellipse(x, y, 47, 60);//draw balloon change the size
}
void sun(color s1)//sun function
{  
  fill(s1);
  stroke(s1);
  line(5, 5, 55, 35);
  line(5, 5, 5, 60);
  line(5, 5, 10, 60);
  line(5, 5, 15, 60);
  line(5, 5, 20, 60);
  line(5, 5, 25, 60);
  line(5, 5, 35, 60);
  line(0, 0, 0, 5);
  line(0, 0, 55, 5);
  line(0, 0, 51, 10);
  line(0, 0, 53, 15);
  line(0, 0, 54, 20);
  line(0, 0, 56, 25);
  line(0, 0, 52, 30);
  line(0, 0, 55, 35);
  line(0, 0, 57, 45);
  line(0, 0, 55, 50);
  line(0, 0, 50, 55);
  line(0, 0, 58, 60);
  line(0, 0, 52, 65);
  ellipse(0, 0, 60, 60);
}

void newsletter(float square_x, float square_y, float Line_x, float Line_y)//creats a news letter
{
  stroke(0); //color of the newletter
  fill(255);
  square(square_x+37, square_y-10, 20);
  line(Line_x+30, Line_y-12, Line_x+40, Line_y-12);
  line(Line_x+30, Line_y-2, Line_x+40, Line_y-2);
  line(Line_x+30, Line_y-4, Line_x+40, Line_y-4);
  line(Line_x+30, Line_y-6, Line_x+40, Line_y-6);
  line(Line_x+30, Line_y-8, Line_x+40, Line_y-8);
  line(Line_x+30, Line_y-10, Line_x+40, Line_y-10);
}

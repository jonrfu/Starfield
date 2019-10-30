Particle[] dots= new Particle[150];
boolean start= false;
void setup()
{
  noStroke();
  size(800,800);
  background(255);
  for(int i=0;i<dots.length;i++){
  dots[i]= new Particle();
  dots[149]= new OddballParticle();
  }
}
void draw()
{
for (int i =0;i< dots.length; i++){
  dots[i].show();
  dots[i].move();

}

}
class Particle
{
double myX,myY,mySpeed,myAngle;
int myColor, mySize;
  Particle(){
   myX=myY=400;
   mySpeed=Math.random()*7;
   mySize=2;
   myAngle=Math.random()*2*Math.PI;
   myColor= color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move(){
  myX+=mySpeed*Math.sin(myAngle);
  myY+=mySpeed*Math.cos(myAngle);
  mySize= (abs(400-(int)myX)+(abs(400-(int)myY)))/15;
  }
  void show(){
  fill(myColor);
  ellipse((float)myX,(float)myY,mySize,mySize); 
  }
}
void mousePressed(){
  background(255);
}
class OddballParticle extends Particle
{
  OddballParticle(){
    myY=myX=400;
    myColor=0;
  }
  void move(){
  myX+=mySpeed*Math.sin(myAngle);
  myY+=mySpeed*Math.cos(myAngle);

  }
  void show(){
     fill(myColor);
  rect((float)myX,(float)myY,30,30); 
  }
}

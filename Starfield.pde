Particle[] dots;
void setup()
{
	size(300,300);
	background(0);
	dots= new Particle[100];
	for(int i=0;i<dots.length;i++){
	dots[i]= new Particle();
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
int myColor;
	Particle(){
	 myX=myY=150;
	 mySpeed=Math.random()*8;
	 myAngle=Math.random()*2*Math.PI;
	 myColor= color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	void move(){
	myX+=mySpeed;
	myY+=mySpeed;
	}
	void show(){
	fill(myColor);
 	ellipse(x,y,20,20); 
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}

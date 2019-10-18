
int offset=10;
float x, y;
float r=300;
float a=0;
float pi=3.141592697932;

void setup()
{
  size(600,600);
  background(0);
}


void draw()
{
  
  background(0);
  x=r*cos(a);
  y=r*sin(a);
  
  
  fill(0,180,0);
  line(width/2, height/2,    
  width/2+x, height/2+y);    
  
  fill(0,110,0,50);          
  for(int i=0;i<4;i++)
  {
   line( width/2, height/2,    
   width/2+r*cos(i*pi/2), height/2+r*sin(i*pi/2));
  }
  
  //
    //fill(0,0,110,2);
    stroke(0,110,0);
  for(int j=1;j<7;j++)
  ellipse(width/2,height/2,  
  2*50*j,2*50*j);
  
  //
  fill(160,250,160);
  for(int ii=0;ii<4;ii++)
  {
    for(int t=0;t<6;t++)
    text(t*50,width/2+t*50*cos(ii*pi/2), height/2+t*50*sin(ii*pi/2));   
  }
  
  
  for(int col=1;col<20;col++)
  {
    fill(0,180,0,10*col);
    arc(width/2,height/2,2*r,2*r,
    a+0.01*(col-1),
    a+0.01*col);   
  }
  
  //fill(0,180,00);
  text("Angle:"+(a/pi)*180,480,580);
  
  
  a=a+0.0124;
  
  
}
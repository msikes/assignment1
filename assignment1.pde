
PImage tri;
float r;
float transX;
float transY;

void setup(){
  size(600,600);
  tri = loadImage("triangle.gif");
  imageMode(CENTER);
 
}

void draw(){
  background(255);
  pushMatrix();
  translate(transX, transY);
  rotate(r);
  image(tri, 0, 0);
  popMatrix();
  if (mousePressed == true){
    r=0;
    transX=mouseX;
    transY=mouseY; }
  else{
    r-=0.3;}
  
}

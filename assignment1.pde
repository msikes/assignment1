PImage tri;
float r;
float transX;
float transY;
int fade=50;

void setup(){
  size(600,600);
  background(255);
  tri = loadImage("triangle.png");
  imageMode(CENTER);
 
}

void draw(){
  fill(255, fade);
  rect(0,0,600,600);
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
    r-=0.1;}
}

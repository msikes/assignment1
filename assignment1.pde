
PImage tri;
float r;

void setup(){
  size(600,600);
  tri = loadImage("triangle.gif");
  imageMode(CENTER);
 
}

void draw(){
  background(255);
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(r);
  image(tri, 0, 0);
  popMatrix();
  if (mousePressed == true){
    r=0;}
  else{
    r-=0.3;}
  
}

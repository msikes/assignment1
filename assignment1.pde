PImage tri;
float r;
float transX;
float transY;
int fade=50;

squares squaresArray= new squares(300,300,0);

squares[] squareArray= new squares[10];

void setup(){
  size(600,600);
  background(255);
  tri = loadImage("triangle.png");
  imageMode(CENTER);
  
  for (int i=0; i<squareArray.length;i++){
    squareArray[i] = new squares(random(0,600), random(-150,1), random (0,5));
  }
 
}

void draw(){
  for (int i=0;i<squareArray.length;i++){
  squareArray[i].draw();
  }
  fill(255, fade);
  rect(0,0,600,600);
  pushMatrix();
  translate(transX, transY);
  rotate(r);
  image(tri, 0,0);
  popMatrix();
  if (mousePressed == true){
    r=0;
    transX=mouseX;
    transY=mouseY; }
  else{
    r-=0.1;}
}

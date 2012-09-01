class squares{
  float xpos;
  float ypos;
  float speed;
  
  squares(float x, float y, float s){
    xpos=x;
    ypos=y;
    speed=s;
  }
  
  void draw(){
    noStroke();
    fill(255,0,0);
    rect(xpos,ypos,5,5);
    ypos+=speed;
    
    if(ypos>600){
      reset();
    }
  }
  
  void reset(){
    ypos=random(-80,-30);
    xpos=random(310);
  }
}

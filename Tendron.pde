public void setup() {
  size(500, 500);  
  background(200, 247, 244);
  noLoop();
}

public void draw() {
  background(200, 247, 244);
  Cluster c = new Cluster(20, 250, 250); 
}

public void mousePressed() {
  redraw();
}

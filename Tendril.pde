class Tendril {
  public final static int SEG_LENGTH = 4; 
  private int myNumSegments, myX, myY;
  private double myAngle;

  public Tendril(int len, double theta, int x, int y) {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }

  public void show() {
    float startX = myX;
    float startY = myY;

    for (int i = 0; i < myNumSegments; i++) {
      myAngle += random(-0.2, 0.2); 

      float endX = startX + cos((float) myAngle) * SEG_LENGTH;
      float endY = startY + sin((float) myAngle) * SEG_LENGTH;

      float progress = (float) i / myNumSegments; 
      if (progress < 0.33) {
        stroke(0, 100, 0); 
      } else if (progress < 0.66) {
        stroke(108, 184, 108); 
      } else {
        stroke(255); 
      }

      strokeWeight(map(myNumSegments, 3, 50, 1, 3)); 

      line(startX, startY, endX, endY);

      startX = endX;
      startY = endY;
    }

    if (myNumSegments >= 3) {
      new Cluster(myNumSegments / 2, (int) startX, (int) startY);
    }
  }
}

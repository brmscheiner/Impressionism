void setup() {
  size(1200,675);
  impressionism();
}

void brush(int x,int y, int dw) {
  noStroke();
  ellipse(x,y,dw,dw);
}

void impressionism() {
  PImage img;
  img = loadImage("calafell.jpg");
  image(img,0,0);
  
  int dw = 10; // dot width 
  int p = 0; // probability 
  
  int x,y;
  
  loadPixels();
//  for (int i=0;i<pixels.length;i++) {
//    if (random(0,1)<p/(dw*dw)) {
//      fill(pixels[i]);
//      x = i % width;
//      y = i - x;
//      ellipse(x,y,dw,dw);
//      p=0; 
//    } else {
//      p++;
//    }
//  }
  
  for (int i=0;i<img.width;i+=dw) {
    for (int j=0;j<img.height;j++) {
      if (random(0,1)<p/(2*dw)) {
        fill(pixels[j*width+i]);
        brush(i,j,dw);
        p=0; 
      } else {
        p++;
      }
    }
  }
  //updatePixels();
  
}


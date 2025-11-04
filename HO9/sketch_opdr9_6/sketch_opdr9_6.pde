void setup() {
  size(400, 400);
  int xStart = width - 50;
  int yStart = height / 2;
  
  for(int i = 0; i < 5; i++){
    ellipse(xStart, yStart, 20, 20);
    xStart -= 25; // replace to left for the nest  cirrkel
  }
}

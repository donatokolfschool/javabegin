void setup() {
  size(300, 300);
  background(255);
  fill(150, 200, 100);
  stroke(0);

  for (int i = 0; i < 10; i++) {
    int x = i * 25 + 20;
    int y = i * 25 + 20;
    ellipse(x, y, 20, 20);
  }
}

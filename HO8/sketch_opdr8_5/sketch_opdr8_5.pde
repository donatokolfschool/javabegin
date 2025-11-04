void setup() {
  size(300, 100);
  background(255);
  fill(100, 150, 200);
  stroke(0);

  for (int i = 0; i < 10; i++) {
    int x = i * 25 + 20;
    ellipse(x, 50, 20, 20);
  }
}

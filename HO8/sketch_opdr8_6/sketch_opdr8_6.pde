void setup() {
  size(300, 100);
  background(255);
  fill(100, 200, 100);
  stroke(0);

  int xWaarde = 20;

  for (int i = 0; i < 10; i++) {
    ellipse(xWaarde, 50, 20, 20);
    xWaarde += 25;
  }
}

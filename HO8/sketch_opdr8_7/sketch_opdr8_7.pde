void setup() {
  size(300, 300);
  background(255);
  stroke(0);

  for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 10; x++) {
      rect(x * 25 + 20, y * 25 + 20, 20, 20);
    }
  }
}

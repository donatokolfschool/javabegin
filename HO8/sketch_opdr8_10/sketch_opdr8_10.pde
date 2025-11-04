void setup() {
  size(300, 300);
  background(255);
  fill(150, 200, 100);
  stroke(0);

  int startY = 40;

  for (int rij = 0; rij < 10; rij++) {
    int startX = 20 + (10 - rij) * 12; 
    for (int kolom = 0; kolom <= rij; kolom++) {
      ellipse(startX + kolom * 25, startY + rij * 25, 20, 20);
    }
  }
}

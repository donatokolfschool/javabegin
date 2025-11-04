void setup() {
  size(300, 300);
  tekenVierkant(50, 50, 100, 100);
}

void tekenVierkant(int x, int y, int w, int h){
  line(x, y, x + w, y);       // top
  line(x + w, y, x + w, y + h); // right
  line(x + w, y + h, x, y + h); // under
  line(x, y + h, x, y);       // left
}

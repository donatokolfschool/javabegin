void setup() {
  size(600, 400);
  tekenBos();
}

void tekenBos(){

  tekenBoom(100, 300, 20, 60);
  tekenBoom(200, 300, 30, 80);
  tekenBoom(300, 300, 25, 70);
  tekenBoom(400, 300, 35, 90);
  tekenBoom(500, 300, 20, 60);
}

void tekenBoom(int x, int y, int breedte, int hoogte){
  fill(139,69,19); // Stam
  rect(x, y - hoogte, breedte, hoogte);
  
  fill(0, 255, 0); 
  ellipse(x + breedte/2, y - hoogte, 80, 80);
}

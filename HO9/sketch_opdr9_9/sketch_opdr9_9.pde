void setup() {
  size(500, 500);
  teken_boom(200, 300, 50, 100); 
}

void teken_boom(int x, int y, int breedte, int hoogte){
  
  fill(139,67,21); 
  rect(x, y - hoogte, breedte, hoogte);
  
  
  fill(6, 255, 7); 
  ellipse(x + breedte/2, y - hoogte, 80, 80);
}

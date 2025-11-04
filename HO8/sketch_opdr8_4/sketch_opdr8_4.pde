void setup() {
  size(300, 100);
  background(255);
  fill(200, 100, 100);   
  stroke(0);
  
  int xWaarde = 20;      
  
  for (int i = 0; i < 10; i++) {
    rect(xWaarde, 40, 20, 20);  
    xWaarde += 25;              
  }
}

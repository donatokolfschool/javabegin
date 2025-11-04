void setup() {
  berekenGemiddelde(10, 20);
  berekenGemiddelde(5, 15);
}

void berekenGemiddelde(int num1, int num2){
  int gemiddelde = (num1 + num2) / 2;
  println("Gemiddelde: " + gemiddelde);
}

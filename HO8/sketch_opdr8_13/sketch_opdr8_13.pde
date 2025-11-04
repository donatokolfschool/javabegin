void setup() {
  size(520, 300);
  background (0);

  int tafel = 7;
  for (int i = 1; i <= 10; i++) {
    int antwoord = i * tafel;
    fill (255);
    text (i + " × " + tafel + " = " + antwoord, 20, i * 20 + 20);
  }
}

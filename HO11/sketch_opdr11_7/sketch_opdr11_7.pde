 int[] getallen = {5, 2, 7, 5, 9, 2, 5, 1, 2, 5};

void setup() {
  println(telHoeVaakGetalVoorkomt(5)); // zoekt aantal 5-e
  println(telHoeVaakGetalVoorkomt(7)); // zoekt aantal 2-en
}

int telHoeVaakGetalVoorkomt(int zoekwaarde) {
  int aantal = 0;
  for (int i = 0; i < getallen.length; i++) {
    if (getallen[i] == zoekwaarde) {
      aantal++;
    }
  }
  return aantal;
}

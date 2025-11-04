  String[] naam = {"Brim", "Jim", "Jan", "spiderman", "Lia"};
  
  boolean gevonden = false;
  
  for (int i = 0; i < naam.length; i++) {
    if (naam[i].equals("Jan")) {
      gevonden = true;
    }
  }
  
  println("Bestaat Jan? " + gevonden);

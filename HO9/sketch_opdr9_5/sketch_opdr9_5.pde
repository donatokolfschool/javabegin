void setup() {
  String s1 = "Hallo ";
  String s2 = "dit ";
  String s3 = "is ";
  String s4 = "Processing!";
  
  String resultaat = voegStringsSamen(s1, s2, s3, s4);
  println(resultaat);
}

String voegStringsSamen(String a, String b, String c, String d){
  return a + b + c + d;
}

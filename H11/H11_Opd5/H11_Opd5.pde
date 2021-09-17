boolean gevonden;
String[] namen = {"Bob", "Jan", "Henk", "Harrold", "Daan"};

void setup(){
  gevonden = false;
  for(int i = 0; i < namen.length; i++){
    if(namen[i] == "Jan"){
      gevonden = true;
    }
    
  }
  
  println(gevonden);
}

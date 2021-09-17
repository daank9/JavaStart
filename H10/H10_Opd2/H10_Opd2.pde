import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(800,800);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1")
            .setPosition(200,400)
            .setSize(400,200)
            .setCaptionLabel("KlikMij");
            
   
  tekstveld1 = cp.addTextfield("TextInput1")
                 .setPosition(200,200)
                 .setText("...")
                 .setCaptionLabel("Type iets!")
                 .setSize(400,50)
                 .setColorLabel(color(255,0,0));
}
void draw(){
}

void Knop1(){
  println("Hoi mijn naam is: " + tekstveld1.getText());
}

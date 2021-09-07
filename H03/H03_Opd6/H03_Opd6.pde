size (800,300);
background (255,255,255);

line (10,30,200,30);

fill(0,0,0);
text("Lijn", 90,45);

noFill();
rect (10,50,190,100);

fill(0,0,0);
text("Rechthoek",70,165);


line (30,180,180,180);
line (30,280,180,280);
line (5,205,5,255);
line (205,205,205,255);

noFill();
arc (30,205,50,50,PI,1.5*PI);

arc (180,205,50,50,1.5*PI,2*PI);

arc (30,255,50,50,PI*0.5,PI);

arc (180, 255,50,50,0,PI*0.5);

fill(0,0,0);
text("Afgeronde rechthoek", 50,295);

fill(246,41,219);
rect(300,50,190,100);

noFill();
ellipse(395,100,190,100);

fill(0,0,0);
text("Gevulde rechthoek met ovaal",315,165);

fill(246,41,219);
ellipse(395,220,190,100);

fill(0,0,0);
text("Gevulde ovaal",355,285);

noFill();
ellipse(640,100,190,100);

fill(246,41,219);
arc (640,100,190,100,PI*1.75,PI*2);

fill(0,0,0);
text("Taartpunt met ovaal eromheen", 560,165);
text("Cirkel",625,290);

noFill();
ellipse(640,225,100,100);

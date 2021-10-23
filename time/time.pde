int nums = 5;
ArrayList<PVector> positions = new ArrayList<PVector>();
int tim = 0;
int timewait = 3000;
PImage cat ;

void setup(){
  size(800,600);
  cat = loadImage("cat.png");
  image(cat, 0, 0);
   for (int i=0; i<nums; i++) {
    positions.add(new PVector(random(width), random(height)));
   }
  
}




void draw(){
  background(239, 34, 77);
  if (millis() > tim + timewait) {
    positions.add(new PVector(random(width), random(height)));
  
  tim=millis();
}
   for (int i=0; i<positions.size(); i++) {
    image(cat,positions.get(i).x, positions.get(i).y, 100, 100);
  
   }
}

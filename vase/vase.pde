
 
import toxi.geom.*;
import toxi.geom.mesh.*;
import toxi.processing.*;
 
WETriangleMesh vase;
ToxiclibsSupport gfx;
 
void setup() {
  size(600, 600, P3D);
  
  vase = (WETriangleMesh) new STLReader().loadBinary(sketchPath("ceramicpot.stl"), STLReader.WEMESH);
  
  gfx=new ToxiclibsSupport(this);
}
 
void draw() {
  background(51);
  
  translate(width/2, height/2, 0);
  rotateX(mouseY*0.01);
  rotateY(mouseX*0.01);
  
  noStroke();
  gfx.mesh(vase, false, 10);
}
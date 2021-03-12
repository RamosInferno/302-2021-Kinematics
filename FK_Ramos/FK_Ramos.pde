
Bone bone = new Bone(5);
Bone draggedBone;

float time = 0;

void setup() {
  size(600, 600);

  //bone.child = new Bone();
  //bone.child.parent = bone; // set child bone's parent propety
}

// ticks every 1/60th
void draw() {
  
  background(128);
  time = millis()/1000.0;

  if (draggedBone != null) draggedBone.drag();

  bone.calc();
  bone.draw();
}


void mousePressed() {
  //bone = new Bone(5);

  Bone clickedBone = bone.onClick();

  if (Keys.SHIFT()) {
    if (clickedBone != null) {

      clickedBone.AddBone(1);
    }
  } else {
  }


  if (clickedBone != null) {
    draggedBone = clickedBone;
  }
}
void mouseReleased() {
  draggedBone = null;
}

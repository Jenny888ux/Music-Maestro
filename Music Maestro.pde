import KinectPV2.KJoint; 
import KinectPV2.*;
import processing.sound.*;
SoundFile file;
KinectPV2 kinect;
boolean s,d,f,g,h,j;
float x1 = 0;
float x2 = 0;
float y1 = 0;
float y2 = 0;
float z1 = 0;
float z2 = 0;
float px1,py1,pz1,px2,py2,pz2;
int tj = 0, c=0,i=0,m=0,k=0,fk=0;
float a=0, st=0;
int ctr=0;
float bodycen=0;
PImage img1,img2,img3,img4,img5,img6,img7,img8,img9,img10;
void setup() {
 //fullScreen();
  size(1920,1080,P3D);
  img1=loadImage("1.jpg");
  img2=loadImage("2.png");
  img3=loadImage("D3finalcrop.png");
  img4=loadImage("c1.png");
  img5=loadImage("c2.png");
  img6=loadImage("D2&D4finalcrop.png");
  img7=loadImage("D2&D4finalcrop1.png");
  img8=loadImage("D1(1)finalcrop.png");
  img9=loadImage("D1(1)finalcrop1.png");
  img10=loadImage("9.png");
  
  kinect = new KinectPV2(this);

  kinect.enableSkeletonColorMap(true);
  kinect.enableColorImg(true);
  kinect.enableDepthImg(true);
  frameRate(60);

 kinect.init();

}

void draw() {
 
  image(img1,0,0);
//image(img2,785,620,350,500);
if ((st>=640)&&(st<=1280)) {
   //println(st);
 if (tj == 1)  delay(100);
 tj =0;
 if(fk==1)delay(1000);
 fk=0;
  //image(kinect.getColorImage(), 0, 0, width, height);

 //background(random(255),random(255),random(255));
lights();
fill(255);
rectMode(CENTER);
/*stroke(180,90,45);
strokeWeight(8);
fill(180,90,45);
ellipse(675,960,150,90);
ellipse(800,760,200,100);
ellipse(1120,760,200,100);
ellipse(1245,960,150,90);

/*stroke(255);
rect(675,915,150,90);
rect(800,725,200,90);
rect(1120,725,200,90);
rect(1245,915,150,90);

/*stroke(130,10,10);
line(600,860,600,960);
line(750,860,750,960);
line(675,905,675,1005);
line(700,660,700,775);
line(900,660,900,775);
line(800,705,800,805);
line(1020,660,1020,775);
line(1220,660,1220,775);
line(1120,705,1120,805);
line(1170,860,1170,960);
line(1320,860,1320,960);
line(1245,905,1245,1005);
*/


/*stroke(130,10,10);
strokeWeight(15);
line(400,550,400,750);
line(400,750,300,800);
line(400,750,500,800);
line(400,750,400,780);
line(1520,565,1520,750);
line(1520,750,1420,800);
line(1520,750,1620,800);
line(1520,750,1520,780);*/

//stroke(0);
//strokeWeight(15);
//fill(255);

//ellipse(675,860,150,90);
//ellipse(800,660,200,100);
//ellipse(1120,660,200,100);
//ellipse(1245,860,150,90);

//strokeWeight(10);
//ellipse(960,400,300,300);
//fill(255,215,0);
//noStroke();
//ellipse(400,500,400,80);
//ellipse(1520,500,400,80);

//stroke(180,90,45);
//strokeWeight(8);
//line(600,960,750,960);
//line(700,770,900,770);
//line(1020,770,1220,770);
//line(1170,960,1320,960);

/*stroke(130,10,10);fill(180,90,45);
arc(675,960,150,90,0,PI);
arc(800,760,200,100,0,PI);
arc(1120,760,200,100,0,PI);
arc(1245,960,150,90,0,PI);*/


strokeWeight(20);
stroke(255,215,0);
//1
if(bodycen>=900&&bodycen<=1000);
{
if(((x1>=600)&&(x1<=750)&&(y1>=815)&&(y1<=905)) && !((px1>=600)&&(px1<=750)&&(py1>=815)&&(py1<=1080))) {
fill(150);
ellipse(675,855,150,65);
//stroke(150);
//strokeWeight(8);
//line(612.5,870,737.5,870);
 file = new SoundFile(this, "1.mp3");
  file.play();
  tj=1;
}
if(((x2>=600)&&(x2<=750)&&(y2>=815)&&(y2<=905))&& !((px2>=600)&&(px2<=750)&&(py2>=815)&&(py2<=1080))){
fill(150);
ellipse(675,855,150,65);
//stroke(150);
//strokeWeight(8);
//line(612.5,870,737.5,870);
 file = new SoundFile(this, "1.mp3");
  file.play();
  tj=1;
}
//2
if(((x1>=700)&&(x1<=900)&&(y1>=610)&&(y1<=720))&& !((px1>=700)&&(px1<=900)&&(py1>=610)&&(py1<=1080))){
fill(150);
ellipse(800,640,200,50);
//stroke(150);
//strokeWeight(8);
//line(712.5,680,887.5,680);
 file = new SoundFile(this, "2.mp3");
  file.play();
  tj=1;
}
if(((x2>=700)&&(x2<=900)&&(y2>=610)&&(y2<=720)) && !((px2>=700)&&(px2<=900)&&(py2>=610)&&(py2<=1080))){
fill(150);
ellipse(800,640,200,50);
//stroke(150);
//strokeWeight(8);
//line(712.5,680,887.5,680);
 file = new SoundFile(this, "2.mp3");
  file.play();
  tj=1;
}
//3
if(((x1>=810)&&(x1<=1110)&&(y1>=250)&&(y1<=550))&& !((px1>=810)&&(px1<=1110)&&(py1>=250)&&(py1<=550))){
fill(150);
ellipse(960,400,300,300);
 file = new SoundFile(this, "3.mp3");
  file.play();
  tj=1;
}
if(((x2>=810)&&(x2<=1110)&&(y2>=250)&&(y2<=550))&& !((px2>=810)&&(px2<=1110)&&(py2>=250)&&(py2<=550))){
fill(150);
ellipse(960,400,300,300);
 file = new SoundFile(this, "3.mp3");
  file.play();
  tj=1;
}
//4
if(((x1>=1020)&&(x1<=1220)&&(y1>=610)&&(y1<=720))&& !((px1>=1020)&&(px1<=1220)&&(py1>=610)&&(py1<=1080))){
fill(150);
ellipse(1120,640,200,50);
//stroke(150);
//strokeWeight(8);
//line(1032.5,680,1207.5,680);
 file = new SoundFile(this, "4.mp3");
  file.play();
  tj=1;
}
if(((x2>=1020)&&(x2<=1220)&&(y2>=610)&&(y2<=720))&& !((px2>=1020)&&(px2<=1220)&&(py2>=610)&&(py2<=1080))){
fill(150);
ellipse(1120,640,200,50);
//stroke(150);
//strokeWeight(8);
//line(1032.5,680,1207.5,680);
 file = new SoundFile(this, "4.mp3");
  file.play();
  tj=1;
}
//5
if(((x1>=1170)&&(x1<=1320)&&(y1>=815)&&(y1<=905))&& !((px1>=1170)&&(px1<=1320)&&(py1>=815)&&(py1<=1080))){
fill(150);
ellipse(1250,855,150,65);
//stroke(150);
//strokeWeight(8);
//line(1182.5,870,1307.5,870);
 file = new SoundFile(this, "5.mp3");
  file.play();
  tj=1;
}
if(((x2>=1170)&&(x2<=1320)&&(y2>=815)&&(y2<=905))&& !((px2>=1170)&&(px2<=1320)&&(py2>=815)&&(py2<=1080))){
fill(150);
ellipse(1250,855,150,65);
//stroke(150);
//strokeWeight(8);
//line(1182.5,870,1307.5,870);
 file = new SoundFile(this, "5.mp3");
  file.play();
  tj=1;
}
//6
if(((x1>=200)&&(x1<=600)&&(y1>=460)&&(y1<=540))&& !((px1>=200)&&(px1<=600)&&(py1>=460)&&(py1<=1080))){
fill(255,215,0);
stroke(200,0,0);strokeWeight(5);
ellipse(400,500,210,45);
 file = new SoundFile(this, "6.mp3");
  file.play();
  tj=1;
}
if(((x2>=200)&&(x2<=600)&&(y2>=460)&&(y2<=540))&& !((px2>=200)&&(px2<=600)&&(py2>=460)&&(py2<=1080))){
fill(255,215,0);
stroke(200,0,0);strokeWeight(5);
ellipse(400,500,210,45);
 file = new SoundFile(this, "6.mp3");
  file.play();
  tj=1;
}
//7
if(((x1>=1320)&&(x1<=1620)&&(y1>=460)&&(y1<=540))&& !((px1>=1320)&&(px1<=1620)&&(py1>=460)&&(py1<=1080))){
fill(255,215,0);
stroke(200,0,0);strokeWeight(5);
ellipse(1520,500,210,45);
 file = new SoundFile(this, "7.mp3");
  file.play();
  tj=1;
}
if(((x2>=1320)&&(x2<=1620)&&(y2>=460)&&(y2<=540))&& !((px2>=1320)&&(px2<=1620)&&(py2>=460)&&(py2<=1080))){
fill(255,215,0);
stroke(200,0,0);strokeWeight(5);
ellipse(1520,500,210,45);
 file = new SoundFile(this, "7.mp3");
  file.play();
  tj=1;
}
 

//stroke(0);
//strokeWeight(10);
//fill(0);
//triangle(960,300,873.4,450,1046.6,450);
//triangle(960,500,873.4,350,1046.6,350);
//triangle(400,495,390,500,410,500);
//triangle(1520,495,1510,500,1530,500);
fill(255);
image(img3,755,200,405,375);
image(img4,190,455,430,100);
image(img5,1310,445,430,130);
image(img10,105,535,600,320);
image(img10,1225,545,600,320);
image(img8,640,575,300,380);
image(img9,980,575,300,380);
image(img6,575,810,200,240);
image(img7,1145,810,200,240);
strokeWeight(8);
/*line(720,200,1200,200);  
line(720,575,1200,575);  
line(720,200,720,575);  
line(1200,200,1200,575);
line(0,800,720,575);
line(0,0,720,200);
line(1920,0,1200,200);
line(1920,800,1200,575);*/
line(835,290,960,100);
line(960,100,1085,290);
fill(0);stroke(0);
ellipse(960,100,10,10);


//Beat 1
if(keyPressed){
if(key == 'q')
 {
  file = new SoundFile(this, "3.mp3");
  file.play();
  delay(250);
  file = new SoundFile(this, "3.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "3.mp3");
  file.play();
  delay(200);
file = new SoundFile(this, "7.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "2.mp3");
  file.play();
  delay(200);
file = new SoundFile(this, "2.mp3");
  file.play();
  delay(200); 
  fill(255);
  textSize(90);
  text("TRY TO COPY THIS BEAT",50,90);
  fk=1;
}
  
}

//Beat 2
if(keyPressed){
if(key == 'w'){

file = new SoundFile(this, "1.mp3");
  file.play();
  delay(250); 
file = new SoundFile(this, "6.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "1.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "6.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "3.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "3.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "3.mp3");
  file.play();
  delay(250);
  file = new SoundFile(this, "6.mp3");
  file.play();
  delay(250);
  fill(255);
  textSize(90);
  text("TRY TO COPY THIS BEAT",50,90);
  fk=1;
}
}
//Beat 3
if(keyPressed){
if(key == 'e'){

file = new SoundFile(this, "2.mp3");
  file.play();
  delay(250); 
file = new SoundFile(this, "4.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "5.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "1.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "3.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "2.mp3");
  file.play();
  delay(250);
file = new SoundFile(this, "5.mp3");
  file.play();
  delay(250);
  file = new SoundFile(this, "6.mp3");
  file.play();
  delay(250);
  fill(255);
  textSize(90);
  text("TRY TO COPY THIS BEAT",50,90);
  fk=1;
}
}
}
}


  ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();

  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
     if(ctr==0)
    if (skeleton.isTracked()) {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      fill(col);
      stroke(col);
      drawBody(joints);

      //draw different color for each hand state
       drawHandState(joints[KinectPV2.JointType_HandLeft]);
       
      drawHandState(joints[KinectPV2.JointType_HandRight]);
      ctr=1;
    }
    else
    ctr=0;
  }

  
  
  
  ctr=0;
}

//DRAW BODY
void drawBody(KJoint[] joints) {
  //drawBone(joints, KinectPV2.JointType_Head, KinectPV2.JointType_Neck);
  //drawBone(joints, KinectPV2.JointType_Neck, KinectPV2.JointType_SpineShoulder);
  drawBone(joints, KinectPV2.JointType_SpineShoulder, KinectPV2.JointType_SpineMid);
  //drawBone(joints, KinectPV2.JointType_SpineMid, KinectPV2.JointType_SpineBase);
  //drawBone(joints, KinectPV2.JointType_SpineShoulder, KinectPV2.JointType_ShoulderRight);
  //drawBone(joints, KinectPV2.JointType_SpineShoulder, KinectPV2.JointType_ShoulderLeft);
  //drawBone(joints, KinectPV2.JointType_SpineBase, KinectPV2.JointType_HipRight);
  //drawBone(joints, KinectPV2.JointType_SpineBase, KinectPV2.JointType_HipLeft); */

  // Right Arm
  drawBone(joints, KinectPV2.JointType_ShoulderRight, KinectPV2.JointType_ElbowRight);
  drawBone(joints, KinectPV2.JointType_ElbowRight, KinectPV2.JointType_WristRight);
  drawBone(joints, KinectPV2.JointType_WristRight, KinectPV2.JointType_HandRight);
  drawBone(joints, KinectPV2.JointType_HandRight, KinectPV2.JointType_HandTipRight);
  drawBone(joints, KinectPV2.JointType_WristRight, KinectPV2.JointType_ThumbRight);

  // Left Arm
  drawBone(joints, KinectPV2.JointType_ShoulderLeft, KinectPV2.JointType_ElbowLeft);
  drawBone(joints, KinectPV2.JointType_ElbowLeft, KinectPV2.JointType_WristLeft);
  drawBone(joints, KinectPV2.JointType_WristLeft, KinectPV2.JointType_HandLeft);
  drawBone(joints, KinectPV2.JointType_HandLeft, KinectPV2.JointType_HandTipLeft);
  drawBone(joints, KinectPV2.JointType_WristLeft, KinectPV2.JointType_ThumbLeft);

/*  // Right Leg
  drawBone(joints, KinectPV2.JointType_HipRight, KinectPV2.JointType_KneeRight);
  drawBone(joints, KinectPV2.JointType_KneeRight, KinectPV2.JointType_AnkleRight);
  drawBone(joints, KinectPV2.JointType_AnkleRight, KinectPV2.JointType_FootRight);

  // Left Leg
  drawBone(joints, KinectPV2.JointType_HipLeft, KinectPV2.JointType_KneeLeft);
  drawBone(joints, KinectPV2.JointType_KneeLeft, KinectPV2.JointType_AnkleLeft);
  drawBone(joints, KinectPV2.JointType_AnkleLeft, KinectPV2.JointType_FootLeft); */

  drawJoint(joints, KinectPV2.JointType_HandTipLeft);
  drawJoint(joints, KinectPV2.JointType_HandTipRight);
 // drawJoint(joints, KinectPV2.JointType_FootLeft);
  //drawJoint(joints, KinectPV2.JointType_FootRight);

 drawJoint(joints, KinectPV2.JointType_ThumbLeft);
 drawJoint(joints, KinectPV2.JointType_ThumbRight);

  drawJoint(joints, KinectPV2.JointType_Head);
  st = joints[KinectPV2.JointType_SpineMid].getX();
  bodycen=joints[KinectPV2.JointType_SpineBase].getX();
  //println(bodycen);
  //println();
}

//draw joint
void drawJoint(KJoint[] joints, int jointType) {
  pushMatrix();
  translate(joints[jointType].getX(), joints[jointType].getY(), joints[jointType].getZ());
  ellipse(0, 0, 25, 25);
  popMatrix();
}

//draw bone
void drawBone(KJoint[] joints, int jointType1, int jointType2) {
  pushMatrix();
  translate(joints[jointType1].getX(), joints[jointType1].getY(), joints[jointType1].getZ());
  ellipse(0, 0, 25, 25);
  popMatrix();
  line(joints[jointType1].getX(), joints[jointType1].getY(), joints[jointType1].getZ(), joints[jointType2].getX(), joints[jointType2].getY(), joints[jointType2].getZ());
}

//draw hand state
void drawHandState(KJoint joint) {
  noStroke();
  
  //handState(joint.getState());
  pushMatrix();
  translate(joint.getX(), joint.getY(), joint.getZ());
  if(c==0)
  {
     px1 = x1;
     py1 = y1;
     pz1 = z1;
    x1=joint.getX();
    y1=joint.getY();
    z1=joint.getZ();    
    
}
  if(c==1)
  {
    px2 = x2;
    py2 = y2;
    pz2 = z2;
    x2=joint.getX();
    y2=joint.getY();
    z2=joint.getZ();
    
    
    c=-1;
  }
  
  c++;
  ellipse(0, 0, 50, 50);
  popMatrix();
}

/*
Different hand state
 KinectPV2.HandState_Open
 KinectPV2.HandState_Closed
 KinectPV2.HandState_Lasso
 KinectPV2.HandState_NotTracked
 */
/*void handState(int handState) {
  switch(handState) {
  case KinectPV2.HandState_Open:
    fill(0, 255, 0);
    break;
  case KinectPV2.HandState_Closed:
    fill(255, 0, 0);
    break;
  case KinectPV2.HandState_Lasso:
    fill(0, 0, 255);
    break;
  case KinectPV2.HandState_NotTracked:
    fill(255, 255, 255);
    break;
  }
}*/
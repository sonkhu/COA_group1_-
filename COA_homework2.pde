float vx1, vy1, vx2, vy3, x1, x2, x3, y1, y2, y3, d1, d2, d3, vd2, vd3;

void setup() {
 size(1200,600); 
 vx1 = 7.5;
 vy1 = 5;
 x1 = x2 = x3 = 0;
 y1 = y2 = y3 = 0;
 d1 = 20;
 d2 = 10;
 d3 = 8;
 vd2 = 0.5;
 vx2 = 8.4;
 vy3 = 8;
 vd3 = -0.2;
 
 x2 = (int)random(width);
 y2 = (int)random(height); 
 x3 = (int)random(width);
 
 background(150);
}

void draw() {
 background(150); 
 
 x1 += vx1;
 y1 += vy1;

 if (x1 >= width || x1 <= 0) vx1 = -vx1;
 if (y1 >= height || y1 <= 0) vy1 = -vy1;
 
  ch1(x1,y1,d1);
  

  x2 += vx2;
  if (x2 >= width || x2 <= 0) vx2 =- vx2;
  d2 += vd2;
  if (d2 >= 20 || d2 <= 10) vd2 = -vd2;
  
  ch2(x2, y2, d2);
  
  y3 += vy3;
  if (y3 >= height || y3 <= 0) vy3 = -vy3;
  d3 += vd3;
  if(d3 >= 8 || d3 <= 4) vd3 = -vd3;
  ch3(x3,y3,d3);
 
}

void ch1(float a, float b, float c) {
  
  fill(255);
  stroke(0);
  circle(a,b,7.5*c); //얼굴  
  circle(a+1.5*c, b-0.25*c, 2*c);   //오른 흰자
  fill(0);
  stroke(0);
  circle(a+c, b-0.2*c, c);    //오른 검자  
  fill(255);
  stroke(0);
  circle(a-1.5*c, b-0.25*c, 2*c);   //왼 흰자
  fill(0);
  stroke(0);
  circle(a-c, b-0.2*c, c);    //왼 검자  
  fill(255,0,0);    //빨간색 입
   circle(a,b+1.875*c,1.5*c);
   fill(255,166,0);  //모자색
   arc(a,b-2*c,10*c,3.75*c,PI,2*PI);  //버섯모자
}

void ch2(float d, float e, float f){
  fill(255, 165, 0);
  circle(d, e, 10 * f);
  fill(255, 255, 255);
  circle(d, e + 2 * f, 2 * f);
  circle(d + 2 * f, e - 1 * f, 2 * f);
  circle(d - 2 * f, e - 1 * f, 2 * f);
  fill(139, 69, 19);
  arc(d, e - 5.1 * f, 6 * f, 6 * f, 0.1*PI, 0.9*PI);
  arc(d + 4.1 * f, e + 3.1 * f, 6 * f, 6 * f, 0.8 * PI , 1.62 * PI);
  arc(d - 4.1 * f, e + 3.1 * f, 6 * f, 6 * f, 1.39 * PI , 2.21 * PI);
}

void ch3(float g, float h, float i){
  noStroke();
  // 머리 1
  fill(151, 84, 204);
  ellipse(g + 9*i, h - 2*i, 20*i, 16*i);
  
  // 머리 2
  fill(132, 108, 202);
  ellipse(g - 12*i, h + 4*i, 16*i, 10*i);

  // 얼굴
  fill(230, 170, 179);
  ellipse(g, h, 22*i, 22*i);
   
  // 머리 3
  fill(151, 84, 204);
  ellipse(g + 7*i, h - 6*i, 14*i, 9*i);
  
  // 머리 4
  fill(132, 108, 202);
  ellipse(g - 4*i, h - 6*i, 20*i, 14*i);

  // 머리 5
  fill(132, 108, 202);
  ellipse(g + 14*i, h + 10*i, 18*i, 12*i);

  // 눈알
  fill(252, 197, 55);
  ellipse(g - 4*i, h + i/2, 6*i, 6*i);   // 왼
  ellipse(g + 4*i, h + i/2, 6*i, 6*i);   // 오

  // 눈동자
  fill(255, 230, 140);
  ellipse(g - 4*i, h + i/2, 3*i, 3*i);   // 왼
  ellipse(g + 4*i, h + i/2, 3*i, 3*i);   // 오
  
  // 입
  fill(179, 81, 76); 
  triangle(g - 2*i, h + 5*i, g + 2*i, h + 5*i, g, h + 7*i); 
}

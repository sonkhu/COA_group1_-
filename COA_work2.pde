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

void ch1(float x, float y, float d) {
  fill(255);
  stroke(0);
  circle(x, y, 7.5 * d); // 얼굴  
  circle(x + 1.5 * d, y - 0.25 * d, 2 * d);   // 오른 흰자
  fill(0);
  stroke(0);
  circle(x + d, y - 0.2 * d, d);    // 오른 검자  
  fill(255);
  stroke(0);
  circle(x - 1.5 * d, y - 0.25 * d, 2 * d);   // 왼 흰자
  fill(0);
  stroke(0);
  circle(x - d, y - 0.2 * d, d);    // 왼 검자  
  fill(255, 0, 0);    // 빨간색 입
  circle(x, y + 1.875 * d, 1.5 * d);
  fill(255, 166, 0);  // 모자색
  arc(x, y - 2 * d, 10 * d, 3.75 * d, PI, 2 * PI);  // 버섯모자
}


void ch2(float x, float y, float d) {
  fill(255, 165, 0);
  circle(x, y, 10 * d);
  fill(255, 255, 255);
  circle(x, y + 2 * d, 2 * d);
  circle(x + 2 * d, y - 1 * d, 2 * d);
  circle(x - 2 * d, y - 1 * d, 2 * d);
  fill(139, 69, 19);
  arc(x, y - 5.1 * d, 6 * d, 6 * d, 0.1 * PI, 0.9 * PI);
  arc(x + 4.1 * d, y + 3.1 * d, 6 * d, 6 * d, 0.8 * PI, 1.62 * PI);
  arc(x - 4.1 * d, y + 3.1 * d, 6 * d, 6 * d, 1.39 * PI, 2.21 * PI);
}


void ch3(float x, float y, float d){
  noStroke();
  // 머리 1
  fill(151, 84, 204);
  ellipse(x + 9*d, y - 2*d, 20*d, 16*d);
  
  // 머리 2
  fill(132, 108, 202);
  ellipse(x - 12*d, y + 4*d, 16*d, 10*d);

  // 얼굴
  fill(230, 170, 179);
  ellipse(x, y, 22*d, 22*d);
   
  // 머리 3
  fill(151, 84, 204);
  ellipse(x + 7*d, y - 6*d, 14*d, 9*d);
  
  // 머리 4
  fill(132, 108, 202);
  ellipse(x - 4*d, y - 6*d, 20*d, 14*d);

  // 머리 5
  fill(132, 108, 202);
  ellipse(x + 14*d, y + 10*d, 18*d, 12*d);

  // 눈알
  fill(252, 197, 55);
  ellipse(x - 4*d, y + d/2, 6*d, 6*d);   // 왼
  ellipse(x + 4*d, y + d/2, 6*d, 6*d);   // 오

  // 눈동자
  fill(255, 230, 140);
  ellipse(x - 4*d, y + d/2, 3*d, 3*d);   // 왼
  ellipse(x + 4*d, y + d/2, 3*d, 3*d);   // 오
  
  // 입
  fill(179, 81, 76); 
  triangle(x - 2*d, y + 5*d, x + 2*d, y + 5*d, x, y + 7*d); 
}

void player2(float x, float y, float d){
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

void player1(float x, float y, float d) {
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

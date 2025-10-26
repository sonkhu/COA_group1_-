void enemy(float x, float y, float d) {
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

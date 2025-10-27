float [] xe, ye, vx, vy;
float xp, yp, vyp;
int life, score, n, phase;
boolean type;

void setup() {
  size(1200,800);

  init();
}

void draw() {
  if (phase == 1) {
    
    //초기화
    init();
    
    
    background(255);
    textSize(70);
    fill(0);
    text("Click and Choose your character!", 150, 200);
    player1(350,500, 40);
    player2(width - 350, 500, 10);
    if (mousePressed) {
      
      //1번캐 선택
      if (dist(350, 500, mouseX, mouseY)<350/2) {
        type = true;
        phase = 2;
      }
      
      //2번캐 선택
      if (dist(width-350, 500, mouseX, mouseY)<350/2) {
        type = false;
        phase = 2;
      }
    }
  } //end_phase1
  
  if (phase == 2) {
    background(255);
    
    //목숨 + 점수 표시
    fill(0);
    textSize(40);
    text("Life: " + life + "/3", width - 150, 40);
    text("Score: " + score, width - 170, 80);
    
    //캐릭터 움직이기
    if (type) player1(xp, yp, 10);
    else player2(xp, yp, 2.5);
    
    //공 왼쪽으로 던지기
    for (int i = 0; i < n;i++) {
      
      //공 발사
      xe[i] += vx[i];
      ye[i] += vy[i];
      if (ye[i] >= height || ye[i] <= 0) {
        vy[i] = -vy[i];
      }

      //충돌검사
      if (dist(xp, yp, xe[i], ye[i])<87.5/2 + 50/2) {
       life --;
       xe[i] = width;
       ye[i] = height/2;
      }
      
      //벽에 닿으면 없어짐
      if (xe[i] <= 50/2) {
       xe[i] = width;
       score ++;
      }
      
      //적 생성
      enemy(xe[i], ye[i], 5);
    } 
    
    //사망시 다음 페이즈
    if (life == 0) phase = 3;
    
    
  } //end_phase2
  
  if (phase == 3) {
  background(255,0,0);
  fill(255);
  textSize(100);
  text("Game END!", 360, 230);
  textSize(60);
  text("score: " + score , 250, 430);
  text("Replay: press R", 600, 430);
  if (keyPressed) {
    if (key == 'r') phase = 1;
    }
  } //end_phase3
  
} //end_draw()

void keyPressed() {
  if (yp >= 0) {
    if (key == 'w' || key == UP) yp += vyp;
  }
  if (yp <= height) { 
    if (key == 's' || key == DOWN) yp -= vyp;
  }
}

void init() {
  
  type = false;

  life = 3;
  phase = 1;
  n = 20;
  score = 0;
  
  xp = 40;
  yp = height/2;
  
  vyp = -20;
  
  xe = new float [n];
  ye = new float [n];
  vx = new float [n];
  vy = new float [n];
  for (int i=0; i<n; i++) {
    xe[i] = width;
    ye[i] = height/2;
    vx[i] = random(-10,-1);
    vy[i] = random(-10, 10);
  }
}

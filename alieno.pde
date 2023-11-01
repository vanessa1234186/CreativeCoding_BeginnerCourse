X = 400;
Y = 400;
H = 250;

function setup() {
  createCanvas(X, Y);
}

function draw() {
  background(220);
  w = (1 / 3) * H; //larghezza

  h_c = (5 / 8) * H;
  h_fa = H - h_c; // altezza faccia+antenne
  h_f = (1 / 2) * h_fa;
  h_a = h_f;
  w_f = 0.8 * w;
  y_f = Y - (h_c + h_f / 2);
  r = 0.05 * w_f;
  dy = (0.05 * h_f) / 2;
  ho = (1 / 4) * h_f;
   
//CORPO
quad(
  (w / 2) * 0.9 + X / 2,
  Y - h_c * 0.3,
  (-w / 2) * 0.9 + X / 2,
  Y - h_c * 0.3,
  X / 2 - w * 0.1,
  Y - (h_c + (h_f / 2) * 0.2),
  X / 2 + w * 0.1,
  Y - (h_c + (h_f / 2) * 0.2)
);
r_p = 1.5 * r;
dp = 0.15;
line(X / 2 - w * dp, Y - r_p, X / 2 - w * dp, Y - h_c * 0.3);
line(X / 2 + w * dp, Y - r_p, X / 2 + w * dp, Y - h_c * 0.3);
circle(X / 2 - w * dp, Y - r_p, 2 * r_p);
circle(X / 2 + w * dp, Y - r_p, 2 * r_p);

///////////
// TESTA //
//////////
/*line(X / 2 - 2 * r, y_f - dy, X / 2 - 0.4 * w, y_f - h_a);
line(X / 2 + 2 * r, y_f - dy, X / 2 + 0.4 * w, y_f - h_a);
fill("#70e000");
circle(X / 2 - 0.4 * w, y_f - h_a, 2 * r);
circle(X / 2 + 0.4 * w, y_f - h_a, 2 * r);
fill(255, 204, 0);
ellipse(X / 2, y_f, w_f, h_f); //faccia
fill(0, 0, 0);
ellipse(X / 2 - r, y_f - dy, 2 * r, ho); //occhietti
ellipse(X / 2 + r, y_f - dy, 2 * r, ho); //occhietti
noFill();
arc(
  X / 2,
  y_f + 7 * dy,
  4 * r,
  (ho * 4) / 5,
  -2 * PI + (1 / 8) * PI,
  -PI - (1 / 8) * PI
);*
  
  //BRACCIA
 /* x_b_sx = X / 2 - w * 0.6;
  x_b_dx = X / 2 + w * 0.6;
  y_br = Y - h_c;
  line(X / 2, Y - (3 / 4) * h_c, x_b_dx, y_br);
  line(X / 2, Y - (3 / 4) * h_c, x_b_sx, y_br);
  //Manina
  l = 10;
  beta = PI / 4;
  gamma = PI / 2 - beta;
  i = sqrt((l / 2) ^ (2 + l) ^ 2);

  p1_x = x_b_dx + l * cos(beta);
  p1_y = y_br + l * sin(beta);
  p2_x = x_b_dx - l * cos(beta);
  p2_y = y_br - l * sin(beta);
  p3_x = x_b_dx + i * cos(gamma);
  p3_y = y_br - i * sin(gamma);
  triangle(p1_x, p1_y, p2_x, p2_y, p3_x, p3_y);

  p1_x = x_b_sx + l * cos(beta);
  p1_y = y_br - l * sin(beta);
  p2_x = x_b_sx - l * cos(beta);
  p2_y = y_br + l * sin(beta);
  p3_x = x_b_sx - i * cos(gamma);
  p3_y = y_br - i * sin(gamma);
  triangle(p1_x, p1_y, p2_x, p2_y, p3_x, p3_y);
}*\


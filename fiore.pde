X=20
Y=20
r=2

function setup() {
  createCanvas(X, Y);
}

function draw() {
  background(220);
  cx=X/2
  cy=Y/2
  circle(cx, cy, 2*r)
  circle(cx+r, cy +r, r*2)
  circle(cx, cy+2*r, r*2)
  circle(cx-r ,cy+r, r*2)
  circle(cx, cy+r, r) 
  line(X/2, Y, cx, cy+3*r) 
}

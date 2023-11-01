function setup() {
  createCanvas(1000, 1000);
  background(0);
  r=255
  g=0
  b=0
  add_c=3
  dr=add_c
  dg=0
  db=0
}

function draw() {
  noStroke()
  if(r>=255){
    dr=-add_c
    dg=add_c
    g=0
  }
  if(g>=255){
    dg=-add_c
    db=add_c
    b=0
  }
  if(b>=255){
    db=-add_c
    dr=add_c
    r=0
  }
  r=r+dr
  g=g+dg
  b=b+db
  fill(r, g, b);
  circle(mouseX,mouseY,30);
    
}
function setup() {
  createCanvas(1000, 1000);
  colorMode(HSL)
  background(0)
  d=20
}

function draw() {
  h=180+180*sin(millis()/1000)
  noStroke()
c=color(h,100, 50)
fill(c)
circle(mouseX, mouseY, d)

}

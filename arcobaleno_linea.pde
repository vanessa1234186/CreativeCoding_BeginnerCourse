function setup() {
  createCanvas(1000, 1000);
  colorMode(HSL);
  background(0);
  d = 10;
  posizionevecchia_x = mouseX;
  posizionevecchia_y = mouseY;
  h = 0;
}

function draw() {
  // h=180+180*sin(millis()/1000)

  noStroke();
  c = color(h, 100, 50);
  stroke(c);

  posizionecorrente_x = mouseX;
  posizionecorrente_y = mouseY;
  strokeWeight(d);
  line(
    posizionevecchia_x,
    posizionevecchia_y,
    posizionecorrente_x,
    posizionecorrente_y
  );
  //console.log(h);
  posizionevecchia_x = posizionecorrente_x;
  posizionevecchia_y = posizionecorrente_y;
  /*if (h == 360) {
    h = 0;
  } else {
    h = h + 1;
  }
  */
  h = h + 1;
  if (h == 361) {
    h = 0;
  }
}

box1 = true;
box2 = true;
box3 = true;

num = Math.floor(Math.random() * 5);
num1 = Math.floor(Math.random() * 5);
num2 = Math.floor(Math.random() * 5);
num3 = Math.floor(Math.random() * 5);

IMG = new Array();

IMG[0] = new Image(); IMG[0].src = "/deli/img/evt/7.png";
IMG[1] = new Image(); IMG[1].src = "/deli/img/evt/apple.png";
IMG[2] = new Image(); IMG[2].src = "/deli/img/evt/banana.png";
IMG[3] = new Image(); IMG[3].src = "/deli/img/evt/watermelon.png";
IMG[4] = new Image(); IMG[4].src = "/deli/img/evt/grape.png";

function start() {
	if(num == 5) num = 0;
	if(box1) document.images["first"].src = IMG[num % 5].src;
	if(box2) document.images["second"].src = IMG[(num + 2) % 5].src;
	if(box3) document.images["third"].src = IMG[(num + 4) % 5].src;
	
	num += 1;
	tid = setTimeout("start()", 60);
}
//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
    drawFish(200, 200, color(200,0,200)); 
    drawFish(300, 200, color(0,200,200));
    drawFish(400,200, color(300,0,20));
    
};

//🟢draw Function - will run on repeat

var fishMove = 0; //variable track movement


draw = function(){
 background(255,255,255,0);
drawFish(50+fishMove,200);
drawFish(400-fishMove,200); 
 drawBird(400,100)
 drawBird(200,100)
 drawBoat(100,300)
 fishMove++;
 
 if(fishMove > 150){
 fishMove=-200;
 
 drawFish(300-fishMove,200);
 
 drawWall(300,300);
 
 
 }

};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};


var drawWall=function(WallX,WallY,WallColor){
     textSize(100);
     fill(300,0,0);
     text("█",WallX,WallY);

};


var drawBoat=function(BoatX,BoatY,BoatColor){
textSize(200);
     fill(300,0,0);
     text("𓊝",BoatX,BoatY);

};



var drawBird=function(BirdX,BirdY,BirdColor){
textSize(80);
     fill(300,0,0);
     text("𓅰 ",BirdX,BirdY);


};


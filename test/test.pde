PFont font;
PFont font_s;
PFont font_ss;
int a=0;
int b=0;
int c=0;
int d=0;
int x=0;
int y=0;
int i=0;
int j=0;
int h=0;
int k=0;
int t=0;
int p=0;

void setup(){
  size(1000,700);
  font = loadFont("BodoniMTBlack-56.vlw");
  font_s = loadFont("Constantia-Italic-30.vlw");
  font_ss = loadFont("Constantia-Italic-25.vlw");
  stroke(255,255,204);
  strokeCap(ROUND);
  strokeWeight(2);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
}

void draw(){
  background(0,0,30);
  textFont(font);
  stroke(255,255,204);
  if(y<30){
    text("MAKE YOUR RECIPE",165,80);
    y=y+1;
  }
  if(y>=30){
    text("MAKE YOUR RECIPE",185,80);
    y=y+1;
    if(y>61){
      y=0;
    }
  }
  textFont(font_s);
  rect(185,160,110,50);
  rect(825,160,120,50);
  fill(102,51,0,150);
  ellipse(185,135,20,20);
  ellipse(825,135,20,20);
  fill(0,0,51);
  text("flavor",150,170);
  text("powder",780,170);
  
  fill(255,255,204);
  textFont(font_ss);
  text("matcha",80,350);
  text("chocolate",200,350);
  text("strawberry",60,480);
  text("espresso",200,480);
  text("cocoa",720,350);
  text("salted caramel",820,350);
  text("ginger",720,485);
  text("suger",870,485);
  text("ice",100,670);
  text("javachip",240,670);
  text("tapioca pearl",400,670);
  text("chocolate/",640,670);
  text("matcha/",750,670);
  text("caramel",840,670);
  
  line(330,140,330,500);
  line(670,140,670,500);
  line(50,500,950,500);
  line(620,500,620,680);
  
  fill(0,0);
  rect(500,240,250,20);
  
  
  
  quad(390,250,610,250,570,470,430,470);
  quad(405,265,595,265,555,460,445,460);
  quad(405,265,595,265,582,325,418,325);//1
  quad(582,325,418,325,432,395,568,395);//2
  quad(432,395,568,395,555,460,445,460);//3
  arc(500,227,230,160,PI,2*PI);//cup
  arc(500,227,210,140,PI,2*PI);//cup
  rect(500,150,30,60);
  fill(255,230);
  quad(390,230,484,170,484,180,450,230);//cream
  quad(450,230,480,180,520,180,550,230);//cream
  quad(550,230,516,180,516,170,610,230);//cream
  
  if((720<mouseX)&&(mouseX<770)&&(mouseY>230)&&(mouseY<330)){
    a=1;
    fill(102,51,0);
    arc(750,250,70,70,PI,2*PI);
    rect(750,295,75,80);
    fill(0,0,30);
    rect(750,255,90,20);
    rect(750,325,90,20);
  }//cocoa
  else if((870<mouseX)&&(mouseX<950)&&(mouseY>230)&&(mouseY<330)){
    a=2;
    fill(204,102,0);
    arc(900,250,70,70,PI,2*PI);
    rect(900,295,75,80);
    fill(0,0,30);
    rect(900,255,90,20);
    rect(900,325,90,20);
  }//salted
  else if((720<mouseX)&&(mouseX<770)&&(mouseY>350)&&(mouseY<430)){
    a=3;
    fill(204,102,51);
    arc(750,390,70,70,PI,2*PI);
    rect(750,435,75,80);
    fill(0,0,30);
    rect(750,395,90,20);
    rect(750,465,90,20);
  }//ginger
  else if((870<mouseX)&&(mouseX<950)&&(mouseY>350)&&(mouseY<430)){
    a=4;
    fill(255);
    arc(900,390,70,70,PI,2*PI);
    rect(900,435,75,80);
    fill(0,0,30);
    rect(900,395,90,20);
    rect(900,465,90,20);
  }//sugar
  
  //powderMotion1
  if(a==1){
    fill(102,51,0);
    quad(405,265,595,265,582,325,418,325);
    
    noStroke();
    fill(102,51,0,150);
    quad(420,210,484,167,484,175,462,215);//cream
    quad(460,220,477,180,523,180,540,220);//cream
    quad(537,215,516,175,516,167,580,210);//cream
    fill(102,51,0,200);
    quad(447,190,484,170,484,185,478,195);//cream
    quad(467,200,478,180,520,180,531,200);//cream
    quad(525,195,516,185,516,170,552,190);//cream
    stroke(255,255,204);
  }
  else if(a==2){
    fill(204,102,0);
    quad(405,265,595,265,582,325,418,325);
    
    noStroke();
    fill(204,102,0,150);
    quad(420,210,484,167,484,175,462,215);//cream
    quad(460,220,477,180,523,180,540,220);//cream
    quad(537,215,516,175,516,167,580,210);//cream
    fill(204,102,0,200);
    quad(447,190,484,170,484,185,478,195);//cream
    quad(467,200,478,180,520,180,531,200);//cream
    quad(525,195,516,185,516,170,552,190);//cream
    stroke(255,255,204);
    
   
  }
  else if(a==3){
    fill(204,102,51);
    quad(405,265,595,265,582,325,418,325);
    
    noStroke();
    fill(204,102,51,150);
    quad(420,210,484,167,484,175,462,215);//cream
    quad(460,220,477,180,523,180,540,220);//cream
    quad(537,215,516,175,516,167,580,210);//cream
    fill(204,102,51,200);
    quad(447,190,484,170,484,185,478,195);//cream
    quad(467,200,478,180,520,180,531,200);//cream
    quad(525,195,516,185,516,170,552,190);//cream
    stroke(255,255,204);
  }
  else if(a==4){
    fill(255);
    quad(405,265,595,265,582,325,418,325);
    
    stroke(230);
    fill(255,150);
    quad(420,210,484,167,484,175,462,215);//cream
    quad(460,220,477,180,523,180,540,220);//cream
    quad(537,215,516,175,516,167,580,210);//cream
    fill(255,200);
    quad(447,190,484,170,484,185,478,195);//cream
    quad(467,200,478,180,520,180,531,200);//cream
    quad(525,195,516,185,516,170,552,190);//cream
    stroke(255,255,204);
  }//powderMotion2
  
  if((100<mouseX)&&(mouseX<140)&&(mouseY>230)&&(mouseY<330)){
    b=1;
    line(70,330,55,220);
    line(70,330,170,330);
    line(170,330,185,220);
    fill(0,51,0);
    quad(180,250,60,250,70,330,170,330);
  }//matcha
  else if((200<mouseX)&&(mouseX<280)&&(mouseY>230)&&(mouseY<330)){
    b=2;
    line(195,330,180,220);
    line(195,330,290,330);
    line(290,330,310,220);
    fill(102,51,0);
    quad(305,250,185,250,195,330,290,330);
  }//choco
  else if((100<mouseX)&&(mouseX<140)&&(mouseY>350)&&(mouseY<430)){
    b=3;
    line(70,470,55,360);
    line(70,470,175,470);
    line(170,470,185,360);
    fill(255,51,51);
    quad(180,390,60,390,70,470,170,470);
  }//strawberry
  else if((200<mouseX)&&(mouseX<280)&&(mouseY>350)&&(mouseY<430)){
    line(195,470,180,360);
    line(195,470,300,470);
    line(295,470,310,360);
    fill(204,153,51);
    quad(305,390,185,390,195,470,295,470);
    b=4;
  }//espresso
  //flaverMotion1
  if(b==1){
    fill(0,51,0);
    quad(582,325,418,325,432,395,568,395);
  }
  
  else if(b==2){
    fill(102,51,0);
    quad(582,325,418,325,432,395,568,395);
  }
  else if(b==3){
    fill(255,51,51);
    quad(582,325,418,325,432,395,568,395);
  }
  else if(b==4){
    fill(204,153,51);
    quad(582,325,418,325,432,395,568,395);
  }//flaverMotion2
  
  if((700<mouseX)&&(mouseX<750)&&(mouseY>560)&&(mouseY<680)){
    c=1;
    fill(102,51,0);
    ellipse(700,560,30,30);
    ellipse(680,555,20,20);
    ellipse(715,620,20,20);
    ellipse(670,595,30,30);
    
  }//choco
  else if((770<mouseX)&&(mouseX<820)&&(mouseY>560)&&(mouseY<680)){
    c=2;
    fill(0,102,0);
    ellipse(795,560,30,30);
    ellipse(765,555,20,20);
    ellipse(800,620,20,20);
    ellipse(765,595,30,30);
  }//matcha
  else if((880<mouseX)&&(mouseX<940)&&(mouseY>560)&&(mouseY<680)){
    c=3;
    fill(204,102,0);
    ellipse(890,560,30,30);
    ellipse(870,555,20,20);
    ellipse(905,620,20,20);
    ellipse(860,595,30,30);
  }//caramel
  
  //syrupMotion1
  if(c==1){
    fill(102,51,0);
    quad(432,395,568,395,555,460,445,460);
  }
  
  else if(c==2){
    fill(0,102,0);
    quad(432,395,568,395,555,460,445,460);
  }
  else if(c==3){
    fill(204,102,0);
    quad(432,395,568,395,555,460,445,460);
  }
  //syrupMotion2
  
  if((40<mouseX)&&(mouseX<220)&&(mouseY>540)&&(mouseY<680)){
    d=1;
  }//ice
  else if((250<mouseX)&&(mouseX<380)&&(mouseY>580)&&(mouseY<680)){
    d=2;
  }//java
  else if((420<mouseX)&&(mouseX<500)&&(mouseY>580)&&(mouseY<680)){
    d=3;
  }//tapioca
  
  //topingMotion1
  if(d==1){
    fill(102,255,204);
    quad(450,180+i,460,195+i,480,180+i,470,170+i);
    quad(450,180+i,460,195+i,455,220+i,440,200+i);
    quad(455,220+i,460,195+i,480,180+i,480,200+i);//ice1
    quad(510,200+i,520,215+i,540,200+i,530,190+i);
    quad(510,200+i,520,215+i,515,240+i,500,220+i);
    quad(515,240+i,520,215+i,540,200+i,540,230+i);//ice2
    quad(470,210+j,480,225+j,500,210+j,490,200+j);
    quad(470,210+j,480,225+j,475,250+j,460,230+j);
    quad(475,250+j,480,225+j,500,210+j,500,240+j);//ice3
    quad(510,150+j,520,165+j,540,150+j,530,140+j);
    quad(510,150+j,520,165+j,515,190+j,500,170+j);
    quad(515,190+j,520,165+j,540,150+j,540,180+j);//ice4
    quad(470,160+i,480,175+i,500,160+i,490,150+i);
    quad(470,160+i,480,175+i,475,200+i,460,180+i);
    quad(475,200+i,480,175+i,500,160+i,500,190+i);//ice5
  
    if((40<mouseX)&&(mouseX<220)&&(mouseY>540)&&(mouseY<680)&&i<200){
      i=i+7;
    }
    else if((40<mouseX)&&(mouseX<220)&&(mouseY>540)&&(mouseY<680)&&i>=200){
      i=0;
    }
    else if(((40>=mouseX)||(mouseX>=220)||(mouseY>540)||(mouseY<680))){
      i=200;
    }
    if((40<mouseX)&&(mouseX<220)&&(mouseY>540)&&(mouseY<680)&&j<200){
      j=j+5;
    }
    else if((40<mouseX)&&(mouseX<220)&&(mouseY>540)&&(mouseY<680)&&j==200){
      j=0;
    }
    else if(((40>=mouseX)||(mouseX>=220)||(mouseY>540)||(mouseY<680))){
      j=200;
    }

}
  
  else if(d==2){
    strokeWeight(2);
    stroke(153,102,51);
    fill(51,0,0);
    rect(495,230+k,10,10);
    rect(540,245+h,10,10);
    rect(540,235+k,10,10);
    rect(475,225+h,10,10);
    rect(500,240+k,10,10);
    rect(510,235+h,10,10);
    rect(520,245+k,10,10);
    rect(480,233+h,10,10);
    rect(490,220+k,10,10);
    rect(495,230+h,10,10);
    rect(547,250+k,10,10);
    rect(535,235+h,10,10);
    rect(494,235+k,10,10);
    rect(462,240+h,10,10);
    rect(480,235+k,10,10);
    rect(490,245+h,10,10);
    rect(472,213+k,10,10);
    rect(488,225+h,10,10);
    stroke(255,255,204);
    strokeCap(ROUND);
    strokeWeight(2);
    
    if((250<mouseX)&&(mouseX<380)&&(mouseY>580)&&(mouseY<680)&&k<200){
      k=k+7;
    }
    else if((250<mouseX)&&(mouseX<380)&&(mouseY>580)&&(mouseY<680)&&k>=200){
      k=0;
    }
    else if((250>=mouseX)||(mouseX>=380)||(mouseY<=580)||(mouseY>=680)){
      k=200;
    }
    
    if((250<mouseX)&&(mouseX<380)&&(mouseY>580)&&(mouseY<680)&&h<200){
      h=h+5;
    }
    else if((250<mouseX)&&(mouseX<380)&&(mouseY>580)&&(mouseY<680)&&h==200){
      h=0;
    }
    else if((250>=mouseX)||(mouseX>=380)||(mouseY<=580)||(mouseY>=680)){
      h=200;
    }
  }
  else if(d==3){
    fill(0);
    ellipse(522,152+t,30,30);
    ellipse(510,237+p,30,30);
    ellipse(520,170+t,30,30);
    ellipse(455,220+p,30,30);
    ellipse(534,198+t,30,30);
    ellipse(536,105+p,30,30);
    ellipse(474,164+t,30,30);
    ellipse(494,203+p,30,30);
    
   if((420<mouseX)&&(mouseX<500)&&(mouseY>580)&&(mouseY<680)&&t<200){
      t=t+7;
    }
    else if((420<mouseX)&&(mouseX<500)&&(mouseY>580)&&(mouseY<680)&&t>=200){
      t=0;
    }
    else if((420>=mouseX)||(mouseX>=500)||(mouseY<=580)||(mouseY>=680)){
      t=200;
    }
    if((420<mouseX)&&(mouseX<500)&&(mouseY>580)&&(mouseY<680)&&p<200){
      p=p+5;
    }
    else if((420<mouseX)&&(mouseX<500)&&(mouseY>580)&&(mouseY<680)&&p==200){
      p=0;
    }
    else if((420>=mouseX)||(mouseX>=500)||(mouseY<=580)||(mouseY>=680)){
      p=200;
    }
  }
  //topingMotion2
  
  if((100>=mouseX)||(mouseX>=140)||(mouseY<=230)||(mouseY>=330)){
    line(85,310,75,240);
    line(85,310,155,310);
    line(155,310,165,240);
    fill(0,51,0);
    quad(162,260,78,260,85,310,155,310);
  }//matcha
    
  if((200>=mouseX)||(mouseX>=280)||(mouseY<=230)||(mouseY>=330)){
    line(210,310,200,240);
    line(210,310,280,310);
    line(280,310,290,240);
    fill(102,51,0);
    quad(287,260,203,260,210,310,280,310);
  }//chocolate
  
  if((100>=mouseX)||(mouseX>=140)||(mouseY<=350)||(mouseY>=430)){
    line(85,450,75,380);
    line(85,450,155,450);
    line(155,450,165,380);
    fill(255,51,51);
    quad(162,400,78,400,85,450,155,450);
  }//strawberry
  
  if((200>=mouseX)||(mouseX>=280)||(mouseY<=350)||(mouseY>=430)){
    line(210,450,200,380);
    line(210,450,280,450);
    line(280,450,290,380);
    fill(204,153,51);
    quad(287,400,203,400,210,450,280,450);
  }//espresso
  
  if((720>=mouseX)||(mouseX>=770)||(mouseY<=230)||(mouseY>=330)){
    fill(102,51,0);
    arc(750,250,50,50,PI,2*PI);
    rect(750,285,55,60);
    fill(0,0,30);
    rect(750,255,70,10);
    rect(750,315,70,10);
  }//cocoa
  
  if((870>=mouseX)||(mouseX>=950)||(mouseY<=230)||(mouseY>=330)){
    fill(204,102,0);
    arc(900,250,50,50,PI,2*PI);
    rect(900,285,55,60);
    fill(0,0,30);
    rect(900,255,70,10);
    rect(900,315,70,10);
  }  //salted caramel
  
  if((720>=mouseX)||(mouseX>=770)||(mouseY<=350)||(mouseY>=430)){
    fill(204,102,51);
    arc(750,390,50,50,PI,2*PI);
    rect(750,425,55,60);
    fill(0,0,30);
    rect(750,395,70,10);
    rect(750,455,70,10);
  }  //ginger
  
  if((870>=mouseX)||(mouseX>=950)||(mouseY<=350)||(mouseY>=430)){
    fill(255);
    arc(900,390,50,50,PI,2*PI);
    rect(900,425,55,60);
    fill(0,0,30);
    rect(900,395,70,10);
    rect(900,455,70,10);
  }//sugar
  
  fill(102,255,204);
  quad(70,540,80,555,100,540,90,530);
  quad(70,540,80,555,75,580,60,560);
  quad(75,580,80,555,100,540,100,560);//ice1
  quad(130,560,140,575,160,560,150,550);
  quad(130,560,140,575,135,600,120,580);
  quad(135,600,140,575,160,560,160,590);//ice2
  quad(90,590,100,605,120,590,110,580);
  quad(90,590,100,605,95,630,80,610);
  quad(95,630,100,605,120,590,120,620);//ice3
  
  strokeWeight(2);
  stroke(153,102,51);
  fill(51,0,0);
  rect(265,580,10,10);
  rect(310,595,10,10);
  rect(310,595,10,10);
  rect(235,605,10,10);
  rect(270,590,10,10);
  rect(280,585,10,10);
  rect(290,595,10,10);
  rect(250,583,10,10);
  rect(260,600,10,10);
  rect(265,580,10,10);
  rect(317,600,10,10);
  rect(305,595,10,10);
  rect(264,605,10,10);
  rect(232,590,10,10);
  rect(250,585,10,10);
  rect(260,595,10,10);
  rect(242,583,10,10);
  rect(258,605,10,10);//javachip
  
  strokeWeight(2);
  stroke(255,255,204);
  fill(0);
  ellipse(420,600,30,30);
  ellipse(510,610,30,30);
  ellipse(480,580,30,30);
  ellipse(445,560,30,30);//tapiioca
  
 if((700>=mouseX)||(mouseX>=750)||(mouseY<=560)||(mouseY>=680)){
    fill(102,51,0);
    rect(700,600,30,70);
    fill(0,0);
    rect(700,560,30,10);
    quad(685,555,715,555,710,545,690,545);
    rect(700,540,10,12);
    fill(0,0,51);
    triangle(700,522,675,540,705,530);
 }//cacao
 if((770>=mouseX)||(mouseX>=820)||(mouseY<=560)||(mouseY>=680)){
    fill(0,102,0);
    rect(790,600,30,70);
    fill(0,0);
    rect(790,560,30,10);
    quad(775,555,805,555,800,545,780,545);
    rect(790,540,10,12);
    fill(0,0,51);
    triangle(790,522,765,540,795,530);
 }//matcha
 if((880>=mouseX)||(mouseX>=940)||(mouseY<=560)||(mouseY>=680)){
    fill(204,102,0);
    rect(880,600,30,70);
    fill(0,0);
    rect(880,560,30,10);
    quad(865,555,895,555,890,545,870,545);
    rect(880,540,10,12);
    fill(0,0,51);
    triangle(880,522,855,540,885,530);
 }//caramel
  
  
  
  fill(255,255,204);
  stroke(255,255,204);
  
  
}

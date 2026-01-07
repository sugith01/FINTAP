import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MainPage() ,
  ));
}

//MainPage
class MainPage extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        Container(
          color: Colors.blueAccent,
          height: MediaQuery.of(context).size.height/2,
          width: double.infinity,
          child:  Center(
            child: MaterialButton(
              child: Text("START",style:TextStyle(color: Colors.blue) ,),
              color: Colors.white,
              shape: CircleBorder(),
              height: 150,
              minWidth: 150,
              onPressed: ()
            {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
            })),
        ),
        Container(
          color: Colors.redAccent,
          height: MediaQuery.of(context).size.height/2,
          width: double.infinity,
          child: Center(
            child: MaterialButton(
              child: Text("START",style: TextStyle(color: Colors.red),),
              color: Colors.white,
              shape: CircleBorder(),
              height: 150,
              minWidth: 150,
              onPressed: ()
            {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
            }),
          ),
        )

      ],
    ),
    ); 
  }
}

class GamePage extends StatefulWidget{
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  double bluecardheight = 0.0;
  double redcardheight = 0.0;
  int  scoreA = 0;
  int  scoreB = 0;
  bool intialized = false;
  @override
  Widget build(BuildContext context) {
    if(intialized == false)
    {
     bluecardheight = MediaQuery.of(context).size.height/2;
     redcardheight = MediaQuery.of(context).size.height/2;
     intialized = true;
    }
    
    
   return Scaffold(
    body: Column(
      children: [
        MaterialButton(
          padding:EdgeInsets.zero,
          onPressed: () {
            setState(() {
              bluecardheight = bluecardheight + 30;
              redcardheight = redcardheight - 30;
              scoreB=scoreB+5;
            });
            
            double winnigheight = MediaQuery.of(context).size.height-70;
            if(bluecardheight > winnigheight)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>resultPage(scoreB,"B")));
            }
          },
          child: Container(
            color: Colors.blue,
            height: bluecardheight,
            width: double.infinity,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
             child:Row(
            children: [
              Expanded(
                child: Text("Player B",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              Text(scoreB.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
            ],
          ) ,
          ),
        ),

         MaterialButton(
          padding: EdgeInsets.zero,
          onPressed: () {
           setState(() {
           redcardheight   = redcardheight+30;
           bluecardheight = bluecardheight - 30;
           scoreA = scoreA+5;
           });
          //  double ScreenHeight = MediaQuery.of(context).size.height;
          double winnigheight = MediaQuery.of(context).size.height -80;
          print(winnigheight);
          if(redcardheight > winnigheight)
          {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>resultPage(scoreA, "A")));

            
          }
          
         },
           child: Container(
            color: Colors.redAccent,
            height: redcardheight,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
                   child:Row(
            children: [
              Expanded(
                child: Text("Player A",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              Text(scoreA.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
            ],
                   ) ,
                   ),
         )
      ],
    ),
   );
  }
}

class resultPage  extends StatelessWidget
{
  int score = 0;
  String player="";
 resultPage(this.score,this.player);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: player=="A"?Colors.redAccent:Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
            Text(score.toString(), style:TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            Text("player "+player.toString()+" won",style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            MaterialButton(
              color: Colors.white,
              child: Text("Restart Game!"),
              onPressed: ()
            {
              Navigator.pop(context);
              Navigator.pop(context);
            })
          ],
        ),
      ),

    );
  }
}
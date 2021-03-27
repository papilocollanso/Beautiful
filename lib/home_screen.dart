import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset=0;
  double yoffset=0;

  bool isDrawerOpen=false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset,yoffset,0)..scale(isDrawerOpen?0.85 : 1.00)
        ..rotateZ(isDrawerOpen? -50 : 0),
      duration: Duration(milliseconds: 200),

      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: isDrawerOpen? BorderRadius.circular(40):BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget> [
          SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isDrawerOpen? GestureDetector(
                    child: Icon(Icons.arrow_back_ios),
                    onTap: (){

                      setState((){
                        xoffset=0;
                        yoffset=0;
                        isDrawerOpen=false;

                      });
                    },
                  ):
                  GestureDetector(
                    child: Icon(Icons.menu),
                    onTap: (){

                      setState((){
                        xoffset=290;
                        yoffset=80;
                        isDrawerOpen=true;

                      });
                    },
                  ),
                  Text('Beautiful Heroes',
                  style:TextStyle(
                    fontSize: 20,
                    color:Colors.black87,
                    decoration: TextDecoration.none,
                  ),
                  ),
             Container(),
                ],
              ),
            ),
     SizedBox(height: 40),
            Column(
              children: <Widget> [
                NewPadding(image1:'assets/images/hulk.jpg',
                    text1:"Hulk",image2:'assets/images/wolf.jpg',
                    text2:'Wolverine'),
                SizedBox(height: 40),
                NewPadding(image1:'assets/images/super.jpg',
                    text1:"SuperMan",image2:'assets/images/wonder.jpg',
                    text2:'WonderWoman'),
                SizedBox(height: 40),
                NewPadding(image1:'assets/images/spider.jpg',
                    text1:"SpiderMan",image2:'assets/images/iron.jpg',
                    text2:'IronMan'),
                SizedBox(height: 40),
                NewPadding(image1:'assets/images/captain.jpg',
                    text1:"Captain America",image2:'assets/images/aqua.jpg',
                    text2:'Aqua Man'),
                SizedBox(height: 40),
                NewPadding(image1:'assets/images/thor.jpg',
                    text1:"Thor",image2:'assets/images/real.jpg',
                    text2:'Prosper Man'),


              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewPadding extends StatelessWidget {
  final String image1;
  final String text1;
  final String image2;
  final String text2;

  const NewPadding({
    Key key, this.image1, this.text1, this.image2, this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
        Container(
          width: 150,
            height: 150,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color:Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0,0),

              ),
            ],
          ),
          child: Column(
            children:<Widget> [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Image(
                  height:100,
                  width:100,
                  image:AssetImage(image1),
                ),

              ),
              Text(text1,
              style:TextStyle(
                color:Colors.black87,
                fontSize: 15,
                decoration: TextDecoration.none,


              ),
              ),
            ],

          ),

        ),

          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color:Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0,0),

                ),
              ],
            ),
            child: Column(
              children:<Widget> [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Image(
                    height:100,
                    width:100,
                    image:AssetImage(image2),
                  ),

                ),
                Text(text2,
                  style:TextStyle(
                    color:Colors.black87,
                    fontSize: 15,
                    decoration: TextDecoration.none,


                  ),
                ),
              ],

            ),

          ),


        ],
      ),
    );
  }
}

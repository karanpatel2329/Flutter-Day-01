import 'dart:ffi';

import 'package:day_01/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 01',
      theme: ThemeData(
        fontFamily: "Roboto",
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constain.greyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topContainer(),
              Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Promo Today",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Constain.lightBlack,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            sliderImage(image:"assets/images/one.jpg"),
                            sliderImage(image:"assets/images/two.jpg"),
                            sliderImage(image:"assets/images/three.jpg"),
                            sliderImage(image:"assets/images/four.jpg"),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                height: 200,
                margin:EdgeInsets.only(left: 20, right: 20,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  image:DecorationImage(
                    image:  AssetImage("assets/images/three.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.2),
                      ],
                      stops: [
                        0.3,
                        0.9
                      ],
                      begin: Alignment.bottomRight,
                    )
                  ),
                  width: double.maxFinite,
                  child: Align(alignment: Alignment.bottomLeft, child: Text("Best Design",style: TextStyle(color: Colors.white,fontSize: 25),)),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

class sliderImage extends StatelessWidget {
  String image;
  sliderImage({required this.image});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage(image),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
        ),
    );
  }
}

class topContainer extends StatelessWidget {
  const topContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.black87,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Find Your",
            style: TextStyle(color: Colors.black87, fontSize: 25),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Inspiration",
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(244, 243, 243, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Constain.lightBlack,
                ),
                hintText: "Search you're looking for",
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}

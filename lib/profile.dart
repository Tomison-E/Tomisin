import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';
import 'widgets/footer.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/search.dart';
import 'widgets/header.dart';


class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[Container(child:NavBar(),color: CupertinoColors.lightBackgroundGray), Body(),Container(child:Footer(),color: CupertinoColors.lightBackgroundGray),],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child:Column(
        children:[SizedBox(
          height: 500,
          child: Card(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                FractionallySizedBox(
                  alignment: Alignment.centerRight,
                  widthFactor: .4,
                  child: Image.network("assets/rs.png", scale: 1.5),
                ),
                FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: .6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Back End Developer",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0))),
                        SizedBox(height: 30.0,),
                        RichText(
                          text: TextSpan(
                            text: "Node.js - GraphQL - Java - PHP - MongoDB - Firebase",
                            style:
                            TextStyle(fontSize: 20, color: Color(0xFF8591B0)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 120.0),
                          child: Text("Documented Projects",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("USSD APPLICATION FOR SCHOOLS (GRAPHQL & MONGO-DB)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        ),
                        Text("E-VOTING SYSTEM (GRAPHQL & MONGO-DB)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        ),
                        Text("FANTASY FOOTBALL (FIREBASE)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        ),
                        Text("SKYPE CHAT BOT (DIALOG FLOW)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            elevation: .5,
            color: Colors.grey[70],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          ),
        ),
        Divider(height: 20.0),
        SizedBox(
            height: 500,
            child: Card(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  FractionallySizedBox(
                    alignment: Alignment.centerRight,
                    widthFactor: .4,
                    child: Image.network("assets/t.png", scale: .75),
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: .6,
                    child: Padding(
                      padding: EdgeInsets.only(left: 48),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Web Developer",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat-Regular",
                                  color: Color(0xFF8591B0))),
                          SizedBox(height: 30.0,),
                          RichText(
                            text: TextSpan(
                              text: "Html - Css - JavaScript - React.js - Flutter Web",
                              style:
                              TextStyle(fontSize: 20, color: Color(0xFF8591B0)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 120.0),
                            child: Text("Documented Projects",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("SECONDARY SCHOOL PORTAL (PHP)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),
                          ),
                          Text("PERSONAL WEBSITE (REACT.JS)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),
                          ),
                          Text("SCION MAGAZINE WEBSITE (PHP)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),
                          ),
                          Text("FANTASY FOOTBALL TEAM (ANGULAR)",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0))),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              elevation: .5,
              color: Colors.grey[70],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
            )
        ),
        Divider(height: 20.0),
        SizedBox(
          height: 500,
          child: Card(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                FractionallySizedBox(
                  alignment: Alignment.centerRight,
                  widthFactor: .4,
                  child: Image.network("assets/tt.png", scale: 1.75),
                ),
                FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: .6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Mobile Application Developer",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0))),
                        SizedBox(height: 30.0,),
                        RichText(
                          text: TextSpan(
                            text: "Flutter",
                            style:
                            TextStyle(fontSize: 20, color: Color(0xFF8591B0)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 120.0),
                          child: Text("Documented Projects",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("FANTASY FOOTBALL (FLUTTER)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        ),
                        Text("Android and IOS Waste Management Application (Flutter)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            elevation: .5,
            color: Colors.grey[70],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          ),
        ),
        Divider(height: 20.0),
        SizedBox(
            height: 500,
            child: Card(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  FractionallySizedBox(
                    alignment: Alignment.centerRight,
                    widthFactor: .4,
                    child: Image.network("assets/ts.jpeg", scale: .75),
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: .6,
                    child: Padding(
                      padding: EdgeInsets.only(left: 48),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Desktop Application Developer",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat-Regular",
                                  color: Color(0xFF8591B0))),
                          SizedBox(height: 30.0,),
                          RichText(
                            text: TextSpan(
                              text: "Java - Flutter",
                              style:
                              TextStyle(fontSize: 20, color: Color(0xFF8591B0)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 120.0),
                            child: Text("Documented Projects",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Redeemer’s University Course Scheduling Software (Java)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),
                          ),
                          Text("Desktop MPR Project (Java)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              elevation: .5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              color: Colors.grey[70],
            )
        ),
        Divider(height: 20.0),
        ],
      ),
      padding: EdgeInsets.only(left: 50.0,right: 50.0,top: 25.0),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Esan",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: TextSpan(
                text: 'Oluwatomisin',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: "Codes",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("Legendary Code"),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "assets/t.png",
                scale: 1,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Search(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
/*
https://wolfninja.herokuapp.com/graphql
https://tomcasted.herokuapp.com/graphql
https://tomcast.herokuapp.com/graphQL
https://misin-73e94.firebaseio.com/.json
https://tomisin-esan.herokuapp.com/
https://gracelandacademyportal.sch.ng/university/sign-in.php
https://thescionmagazineng.com
 https://misin-73e94.firebaseapp.com/tactics
 https://github.com/Tomison-E/Fantasy_footballTeam
 */
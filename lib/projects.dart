import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';
import 'widgets/footer.dart';
import 'widgets/navbar.dart';

import 'utils/responsiveLayout.dart';
import 'dart:html' as html;


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
            children: <Widget>[Container(child:NavBar(val: 3,),color: Colors.grey[70]), Body(),Container(child:Footer(),color: Colors.grey[70]),],
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
      mediumScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      child:Column(
        children:[Tooltip(
         child: SizedBox(
           height: 500,
           child: Card(
             child: Stack(
               fit: StackFit.expand,
               children: <Widget>[
                 FractionallySizedBox(
                   alignment: Alignment.centerRight,
                   widthFactor: .4,
                   child: Image.network("assets/5.png", scale: 1.5),
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
                         Text("Back End Development",
                           style: TextStyle(
                               fontSize: 40,
                               fontWeight: FontWeight.bold,
                               fontFamily: "Montserrat-Regular",
                               color: Color(0xFF8591B0)),textAlign: TextAlign.center,),
                         SizedBox(
                           height: 20,
                         ),
                         Text("** click on any project to open",
                           style: TextStyle(
                             fontSize: 15,
                             fontWeight: FontWeight.normal,
                             fontFamily: "Montserrat-Regular",
                             color: Color(0xFF8591B0),
                           ),maxLines: 1,textAlign: TextAlign.center,

                         ),
                  GestureDetector(
                    onTap: ()=> html.window.open("https://tomcast.herokuapp.com/graphQL","ussd"),
                    child:Text("USSD APPLICATION FOR SCHOOLS (GRAPHQL & MONGO-DB)",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Montserrat-Regular",
                        color: Color(0xFF8591B0),
                      ),maxLines: 1,textAlign: TextAlign.center,

                    ),
                  ),
                         GestureDetector(
                           onTap: ()=> html.window.open("https://wolfninja.herokuapp.com/graphql","voting"),
                           child:Text("E-VOTING SYSTEM (GRAPHQL & MONGO-DB)",
                             style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.normal,
                                 fontFamily: "Montserrat-Regular",
                                 color: Color(0xFF8591B0)),maxLines: 1,
                           ),
                         ),
                         GestureDetector(
                           onTap: ()=> html.window.open("https://misin-73e94.firebaseio.com/.json","firebase"),
                           child: Text("FANTASY FOOTBALL (FIREBASE)",
                             style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.normal,
                                 fontFamily: "Montserrat-Regular",
                                 color: Color(0xFF8591B0)),maxLines: 1,
                           ),
                         ),
                         Text("SKYPE CHAT BOT (DIALOG FLOW)",
                           style: TextStyle(
                               fontSize: 15,
                               fontWeight: FontWeight.normal,
                               fontFamily: "Montserrat-Regular",
                               color: Color(0xFF8591B0)),maxLines: 1,
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
          message: "Click on any project and for more Public Projects kindly visit https://tomisin-esan.herokuapp.com/ for more. PS it is not mobile responsive" ,
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
                    child: Image.network("assets/1.png", scale: .75),
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
                          Text("Web Developement",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat-Regular",
                                  color: Color(0xFF8591B0)),textAlign: TextAlign.center,),
                          SizedBox(
                            height: 20,
                          ),
                    GestureDetector(
                     onTap: ()=> html.window.open("https://gracelandacademyportal.sch.ng/university/sign-in.php","portal"),
                     child:Text("SECONDARY SCHOOL PORTAL (PHP)",
                       style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.normal,
                           fontFamily: "Montserrat-Regular",
                           color: Color(0xFF8591B0)),maxLines: 1,
                     ),
                   ),
                      GestureDetector(
                        onTap: ()=> html.window.open("https://tomisin-esan.herokuapp.com/","personal"),
                        child:Text("PERSONAL WEBSITE (REACT.JS)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),maxLines: 1,
                          ),
                      ),
                      GestureDetector(
                        onTap: ()=> html.window.open("https://thescionmagazineng.com","scion"),
                        child:Text("SCION MAGAZINE WEBSITE (PHP)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),maxLines: 1,
                          ),
                      ),
                      GestureDetector(
                        onTap: ()=> html.window.open("https://misin-73e94.firebaseapp.com/tactics","angular"),
                        child:Text("FANTASY FOOTBALL TEAM (ANGULAR)",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),maxLines: 1,))
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
                  child: Image.network("assets/4.png", scale: 1.75),
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
                    Text("Mobile Development",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),textAlign: TextAlign.center),
                        SizedBox(
                          height: 20,
                        ),
                  GestureDetector(
                    onTap: ()=> html.window.open("https://github.com/Tomison-E/Fantasy_footballTeam","blanks"),
                    child: Text("FANTASY FOOTBALL (FLUTTER)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        )),
                        GestureDetector(
                          onTap: (){
                     html.window.open("https://firebasestorage.googleapis.com/v0/b/tomisin-edc61.appspot.com/o/apps%2Fauto_waste.apk?alt=media&token=22d213c9-0709-4cd1-bcbe-5638e94ddeb2","loads");
                       },
                        child:Text("Android and IOS Waste Management Application (Flutter)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),maxLines: 1,
                        ),
                        ),
                    Text("VITAG Streaming Service (Flutter)",
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
                    child: Image.network("assets/2.png", scale: .75),
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
                          Text("Desktop Development",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat-Regular",
                                  color: Color(0xFF8591B0)),textAlign: TextAlign.center),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Redeemer’s University Course Scheduling Software (Java)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),maxLines: 1,
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
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Tooltip(
        child:SizedBox(
          child: Card(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child:Image.network("assets/5.png", scale: 1.5),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Back End Development",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0))),
                        SizedBox(
                          height: 20,
                        ),
                        Text("** click on projects to open ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        ),
                       GestureDetector(
        onTap: ()=> html.window.open("https://tomcast.herokuapp.com/graphQL","ussd"),
    child:Text("* USSD APPLICATION FOR SCHOOLS (GRAPHQL & MONGO-DB)",
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    fontFamily: "Montserrat-Regular",
    color: Color(0xFF8591B0)),
    ),
    ),
                        GestureDetector(
                          onTap: ()=> html.window.open("https://wolfninja.herokuapp.com/graphql","voting"),
                          child:Text("* E-VOTING SYSTEM (GRAPHQL & MONGO-DB)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()=> html.window.open("https://misin-73e94.firebaseio.com/.json","firebase"),
                          child: Text("* FANTASY FOOTBALL (FIREBASE)",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF8591B0)),
                          ),
                        ),
                        Text("* SKYPE CHAT BOT (DIALOG FLOW)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0)),
                        ),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 10.0),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            elevation: .5,
            color: Colors.grey[70],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          ),
        ),
              message: "Click on any project and for more public projects kindly visit https://tomisin-esan.herokuapp.com/ for more. PS it is not mobile responsive" ,
            ),
            Divider(height: 20.0),
            SizedBox(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.network("assets/1.png", scale: 1.75),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 48),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Web  Developement",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat-Regular",
                                      color: Color(0xFF8591B0))),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: ()=> html.window.open("https://gracelandacademyportal.sch.ng/university/sign-in.php","portal"),
                                child:Text("* SECONDARY SCHOOL PORTAL (PHP)",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Montserrat-Regular",
                                      color: Color(0xFF8591B0)),
                                ),
                              ),
                              GestureDetector(
                                onTap: ()=> html.window.open("https://tomisin-esan.herokuapp.com/","personal"),
                                child:Text("* PERSONAL WEBSITE (REACT.JS)",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Montserrat-Regular",
                                      color: Color(0xFF8591B0)),
                                ),
                              ),
                              GestureDetector(
                                onTap: ()=> html.window.open("https://thescionmagazineng.com","scion"),
                                child:Text("* SCION MAGAZINE WEBSITE (PHP)",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Montserrat-Regular",
                                      color: Color(0xFF8591B0)),
                                ),
                              ),
                              GestureDetector(
                                  onTap: ()=> html.window.open("https://misin-73e94.firebaseapp.com/tactics","angular"),
                                  child:Text("* FANTASY FOOTBALL TEAM (ANGULAR)",style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Montserrat-Regular",
                                      color: Color(0xFF8591B0))))
                            ],
                          ),
                        ),
                        padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 10.0),
                      )
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                  elevation: .5,
                  color: Colors.grey[70],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                )
            ),
            Divider(height: 20.0),
            SizedBox(
              child: Card(
                child: Column(
                  children: <Widget>[
                   Container(
                      alignment: Alignment.center,
                      child: Image.network("assets/4.png", scale: 1.75),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 48),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Mobile Development",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat-Regular",
                                    color: Color(0xFF8591B0))),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                                onTap: ()=> html.window.open("https://github.com/Tomison-E/Fantasy_footballTeam","blanks"),
                                child: Text("* FANTASY FOOTBALL (FLUTTER)",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Montserrat-Regular",
                                      color: Color(0xFF8591B0)),
                                )),
                        GestureDetector(
                          onTap: ()=>  html.window.open("https://firebasestorage.googleapis.com/v0/b/tomisin-edc61.appspot.com/o/apps%2Fauto_waste.apk?alt=media&token=22d213c9-0709-4cd1-bcbe-5638e94ddeb2","loads"),
                          child:  Text("* Android and IOS Waste Management Application (Flutter)",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Montserrat-Regular",
                                  color: Color(0xFF8591B0)),
                            )
                        ),
                          Text("* VITAG Streaming Service (Flutter)",
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    fontFamily: "Montserrat-Regular",
    color: Color(0xFF8591B0)),
    ),
                          ],
                        )
                      ),padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 10.0),
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                elevation: .5,
                color: Colors.grey[70],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
            Divider(height: 20.0),
            SizedBox(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.network("assets/2.png", scale: 1.45),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 48),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Desktop Development",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat-Regular",
                                      color: Color(0xFF8591B0))),
                              SizedBox(
                                height: 20,
                              ),
                              Text("* Redeemer’s University Course Scheduling Software (Java)",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Montserrat-Regular",
                                    color: Color(0xFF8591B0)),
                              ),
                              Text("* Desktop MPR Project (Java)",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Montserrat-Regular",
                                    color: Color(0xFF8591B0)),
                              ),
                            ],
                          ),
                        ),padding: EdgeInsets.only(top: 10.0,right: 10.0,bottom: 10.0),
                      )
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                  elevation: .5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                  color: Colors.grey[70],
                )
            ),
            Divider(height: 20.0),

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
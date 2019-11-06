import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
import 'utils/UiData/tomisin_icons.dart';
import 'widgets/search.dart';
import 'widgets/footer.dart';


class Bio extends StatelessWidget {
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
            children: <Widget>[Container(child:NavBar(val: 4,),color: Colors.grey[120]), Body()],
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
   double t =  MediaQuery.of(context).size.width;
   if(t>=1097.0) {
     return Padding(
       child: Column(
         children: [ Container(
           height: 150.0,
           width: t,
           //   decoration: BoxDecoration(color: CupertinoColors.lightBackgroundGray),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               RichText(text: TextSpan(
                   text: "HEY, IT'S ",
                   style: TextStyle(color: Color(0xFF8591B0),
                       fontSize: 60.0,
                       fontWeight: FontWeight.bold),
                   children: [
                     TextSpan(
                         text: "TOMISIN ESAN",
                         style: TextStyle(
                             fontSize: 60,
                             fontWeight: FontWeight.bold,
                             color: Colors.blue[400]))
                   ]
               )),
               SizedBox(height: 40.0),
               Text("SOFTWARE ENGINEER FROM LAGOS, NIGERIA", style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.normal,
                   color: Color(0xFF8591B0))),
             ],
           ),
         ),
         SizedBox(height: 70.0,),
         SizedBox(
           height: 400,
           width: t,
           child: Stack(
               fit: StackFit.expand,
               children: <Widget>[
                 FractionallySizedBox(
                     alignment: Alignment.centerLeft,
                     widthFactor: .3,
                     child: Padding(
                       child: Column(
                         children: <Widget>[
                           Text("MY STORY",
                               style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.blue[400])),
                           SizedBox(height: 40.0,),
                           Text(
                             "Hello, I am a developer who loves to work on application softwares that reaches out to many and is appreciated by all. "
                                 "I build across major platforms and I am easily adaptable to other environments thanks to my years of experience."
                                 "", style: TextStyle(fontSize: 20.0,
                               fontWeight: FontWeight.normal,
                               color: Color(0xFF8591B0),
                               height: 1.5),),
                           SizedBox(height: 20.0,),
                           RaisedButton.icon(onPressed: () {
                             _showModalSheet(context);
                           },
                               icon: Icon(Icons.file_download),
                               label: Text("DOWNLOAD RESUME"),
                               textColor: Colors.white,
                               color: Colors.blue[400]),
                         ],
                         crossAxisAlignment: CrossAxisAlignment.start,
                       ),
                       padding: EdgeInsets.only(left: 30.0),
                     )
                 ),
                 FractionallySizedBox(
                   alignment: Alignment.center,
                   widthFactor: .25,
                   child: Card(
                     child: Image.network(
                       "assets/tomi.png", fit: BoxFit.cover,),
                     color: CupertinoColors.white,
                     elevation: 1.0,
                   ),
                 ),
                 FractionallySizedBox(
                     alignment: Alignment.centerRight,
                     widthFactor: .3,
                     child: Padding(
                       child: Column(
                         children: <Widget>[
                           Text("PERSONAL INFORMATION",
                               style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.blue[400])),
                           SizedBox(height: 20.0,),
                           Row(
                             children: <Widget>[
                               SizedBox(child: Text("Name:", style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)), width: 100.0,),
                               Text("Esan Oluwatomisin", style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)),
                             ],
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                           ),
                           Divider(),
                           Row(
                             children: <Widget>[
                               SizedBox(child: Text("DOB:", style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)), width: 100.0,),
                               Text("Dec 10, 199_", style: TextStyle(fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)),
                             ],
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                           ),
                           Divider(),
                           Row(
                             children: <Widget>[
                               SizedBox(child: Text("Phone:", style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)), width: 100.0,),
                               Text("+234 807 954 2791", style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)),
                             ],
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                           ),
                           Divider(),
                           Row(
                             children: <Widget>[
                               SizedBox(child: Text("Email:", style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)), width: 100.0,),
                               Text("tomiesan@yahoo.com", style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)),
                             ],
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                           ),
                           Divider(),
                           Row(
                             children: <Widget>[
                               SizedBox(child: Text("Address:",
                                   style: TextStyle(fontSize: 20.0,
                                     fontWeight: FontWeight.normal,
                                     color: Color(0xFF8591B0),)),
                                 width: 100.0,),
                               Text("Ikeja, Lagos", style: TextStyle(
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.normal,
                                 color: Color(0xFF8591B0),)),
                             ],
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                           ),
                           Divider(),
                           SizedBox(height: 20.0,),
                           Row(
                             children: <Widget>[
                               Card(color: CupertinoColors.white,
                                 child: Padding(child: Icon(
                                     Tomisin.github_circled_alt2,
                                     color: Colors.blue[400], size: 20.0),
                                     padding: EdgeInsets.all(5.0)),
                                 elevation: 5.0,
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(20.0)),
                                 margin: EdgeInsets.only(right: 20.0),),
                               Card(color: CupertinoColors.white,
                                   child: Padding(child: Icon(
                                       Tomisin.twitter, color: Colors.blue[400],
                                       size: 20.0),
                                       padding: EdgeInsets.all(5.0)),
                                   elevation: 5.0,
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(
                                           20.0)),
                                   margin: EdgeInsets.only(right: 20.0)),
                               Card(color: CupertinoColors.white,
                                   child: Padding(child: Icon(Tomisin.linkedin,
                                       color: Colors.blue[400], size: 20.0),
                                       padding: EdgeInsets.all(5.0)),
                                   elevation: 5.0,
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(
                                           20.0)),
                                   margin: EdgeInsets.only(right: 20.0)),
                               Card(color: CupertinoColors.white,
                                   child: Padding(child: Icon(
                                       Tomisin.gmail, color: Colors.blue[400],
                                       size: 15.0),
                                       padding: EdgeInsets.all(5.0)),
                                   elevation: 5.0,
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(
                                           20.0)),
                                   margin: EdgeInsets.only(right: 20.0)),
                               Card(color: CupertinoColors.white,
                                   child: Padding(child: Icon(Tomisin.facebook,
                                       color: Colors.blue[400], size: 20.0),
                                       padding: EdgeInsets.all(5.0)),
                                   elevation: 5.0,
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(
                                           20.0)),
                                   margin: EdgeInsets.only(right: 20.0)),
                             ],
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                           ),


                         ],
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,

                       ),
                       padding: EdgeInsets.only(left: 10.0),
                     )
                 )
               ]
           ),

         ),


         ],

       ),
       padding: EdgeInsets.only(left: 50.0, right: 50.0),
     );
   }
   else{ return SmallChild();}
  }
  void _showModalSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (builder) {
      return Container(
        child: Search(),
        padding: EdgeInsets.all(40.0),
      );
    });
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double t =  MediaQuery.of(context).size.width;
    return SingleChildScrollView(
         child:Padding(
      child:Column(
        children:[ Container(
          height:150.0,
          width:t,
          //   decoration: BoxDecoration(color: CupertinoColors.lightBackgroundGray),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RichText(text: TextSpan(
                  text:"HEY, IT'S ",
                  style: TextStyle(color: Color(0xFF8591B0),fontSize: 25.0,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: "TOMISIN ESAN",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[400]))
                  ]
              )),
              SizedBox(height:20.0),
              Text("SOFTWARE ENGINEER FROM LAGOS, NIGERIA",style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF8591B0)),textAlign: TextAlign.center,),
            ],
          ),
        ),
        SizedBox(height: 10.0,),
       Column(
              children: <Widget>[
               Container(
                    alignment: Alignment.center,
                    child: Padding(
                      child:Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Card(
                              child: Image.network("assets/tomi.png",fit: BoxFit.cover,),
                              color: CupertinoColors.white,
                              elevation: 1.0,
                            ),
                            margin: EdgeInsets.only(bottom: 35.0),
                          ),

                          Text( "MY STORY",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[400])),
                          SizedBox(height: 40.0,),
                          Text("Hello, I am a developer who loves to work on application softwares that reaches out to many and is appreciated by all. "
                              "I build across major platforms and I am easily adaptable to other environments thanks to my years of experience."
                              "",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),height: 1.5),),
                          SizedBox(height: 40.0,),
                          RaisedButton.icon(onPressed: (){
                            _showModalSheet(context);
                          }, icon: Icon(Icons.file_download), label: Text("DOWNLOAD RESUME"),textColor: Colors.white,color:Colors.blue[400]),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                      padding: EdgeInsets.only(left: 10.0, bottom: 15.0),
                    )
                ),
                Container(
                    alignment: Alignment.center,
                      child:Column(
                        children: <Widget>[
                          Text( "PERSONAL INFORMATION",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[400]),textAlign: TextAlign.center,),
                          SizedBox(height: 20.0),
                          Row(
                            children: <Widget>[
                              SizedBox(child: Text("Name:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),),textAlign: TextAlign.end,),width: t/2-70,),
                              Text("   Esan Oluwatomisin",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),),textAlign: TextAlign.start,),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              SizedBox(child: Text("DOB:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),),textAlign: TextAlign.right,),width: t/2-70,),
                              Text("   Dec 10, 199_",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),)),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              SizedBox(child: Text("Phone:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0)),textAlign: TextAlign.right,),width: t/2-70,),
                              Text("   +234 807 954 2791",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),)),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              SizedBox(child: Text("Email:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),),textAlign: TextAlign.end,),width: t/2-70,),
                              Text("   tomiesan@yahoo.com",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),)),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              SizedBox(child: Text("Address:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),),textAlign: TextAlign.end,maxLines: 1,),width: t/2-70,),
                              Text("   Ikeja, Lagos",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,color: Color(0xFF8591B0),)),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          Divider(),
                          SizedBox(height: 20.0,),
                          Row(
                            children: <Widget>[
                              Card(color: CupertinoColors.white,child: Padding(child: Icon(Tomisin.github_circled_alt2,color: Colors.blue[400],size: 20.0),padding: EdgeInsets.all(5.0)),elevation: 5.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),margin: EdgeInsets.only(right: 20.0),),
                              Card(color: CupertinoColors.white,child: Padding(child: Icon(Tomisin.twitter,color: Colors.blue[400],size: 20.0),padding: EdgeInsets.all(5.0)),elevation: 5.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),margin: EdgeInsets.only(right: 20.0)),
                              Card(color: CupertinoColors.white,child: Padding(child: Icon(Tomisin.linkedin,color: Colors.blue[400],size: 20.0),padding: EdgeInsets.all(5.0)),elevation: 5.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),margin: EdgeInsets.only(right: 20.0)),
                              Card(color: CupertinoColors.white,child: Padding(child: Icon(Tomisin.gmail,color: Colors.blue[400],size: 15.0),padding: EdgeInsets.all(5.0)),elevation: 5.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),margin: EdgeInsets.only(right: 20.0)),
                              Card(color: CupertinoColors.white,child: Padding(child: Icon(Tomisin.facebook,color: Colors.blue[400],size: 20.0),padding: EdgeInsets.all(5.0)),elevation: 5.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),margin: EdgeInsets.only(right: 20.0)),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),




                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                    ), margin: EdgeInsets.only(left: 10.0,bottom: 20.0,top: 15.0),
                )
              ]
          ),
        ],

      ),
      padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 30.0),
    )
    );

  }
  void _showModalSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (builder) {
      return Container(
        child: Search(),
        padding: EdgeInsets.all(5.0),
      );
    });
  }
}

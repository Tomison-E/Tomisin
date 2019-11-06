import 'package:flutter_web/material.dart';
import '../utils/responsiveLayout.dart';
import '../widgets/search.dart';


class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Skills", "Projects", "Profile"];
  final Color color;
  final int val;

  NavBar({this.color= Colors.blue,this.val=1});

  List<Widget> navItem(BuildContext context) {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: GestureDetector(child:Text(text, style: TextStyle(fontFamily: "Montserrat-Bold",color: Color(0xFF8591B0))),onTap:()=> Navigator.pushNamed(context, "/"+text),),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(colors: [
                      Colors.blue[400],Colors.blue[200] ,], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                child: Center(
                  child: Text("T",
                      style: TextStyle(fontSize: ResponsiveLayout.isSmallScreen(context)?20:30, color: Colors.white)),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text("Techargon", style: TextStyle(fontSize: ResponsiveLayout.isSmallScreen(context)?24:26,color: Color(0xFF8591B0)))
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem(context)]..add(InkWell(
    child: GestureDetector(
                    child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [ Colors.blue[400],Colors.blue[200] ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0, 8),
                            blurRadius: 8)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                    child:Text("CV",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1,
                              fontFamily: "Montserrat-Bold")),
    ),

                    ),

                  ),onTap: ()=>_showModalSheet(context),
                ))),
            )
          else _selectPopup(context)
           // GestureDetector(child:Image.network("assets/menu.png", width: 26, height: 26),onTap: ()=>bd.createState(). ),
        ],
      ),
    );
  }
  void _showModalSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (builder) {
      return Container(
        child: Search(),
        padding: EdgeInsets.all(40.0),
      );
    });
  }

      Widget _selectPopup(BuildContext context) => PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(navLinks[0], style: TextStyle(fontFamily: "Montserrat-Bold",color: Color(0xFF8591B0))),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(navLinks[1], style: TextStyle(fontFamily: "Montserrat-Bold",color: Color(0xFF8591B0))),

        ),
        PopupMenuItem(
          value: 3,
          child: Text(navLinks[2], style: TextStyle(fontFamily: "Montserrat-Bold",color: Color(0xFF8591B0))),
        ),
        PopupMenuItem(
          value: 4,
          child: Text(navLinks[3], style: TextStyle(fontFamily: "Montserrat-Bold",color: Color(0xFF8591B0))),
        ),
      ],
      initialValue: val,
      icon: Icon(Icons.menu,color: color,size: 30.0,),
        tooltip: null,
        onSelected: (value){
      switch(value){
       case 1: Navigator.pushNamed(context, "/"+navLinks[0]);
       break;
       case 2: Navigator.pushNamed(context, "/"+navLinks[1]);
       break;
       case 3: Navigator.pushNamed(context, "/"+navLinks[2]);
       break;
       case 4: Navigator.pushNamed(context, "/"+navLinks[3]);
       break;
       default:  null;
      }
        },
    );


}

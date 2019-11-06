import 'package:flutter_web/material.dart';
import '../utils/responsiveLayout.dart';
import '../widgets/search.dart';

class Footer extends StatelessWidget {
  final navLinks = ["Home", "Skills", "Projects", "Profile"];

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
      Text("Esan Tomisin Concept",style: TextStyle(fontFamily: "Montserrat-Bold",color: Color(0xFF8591B0))),
      SizedBox(
        width: 16,
      ),
      ],
    ),
    if (!ResponsiveLayout.isSmallScreen(context))
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[...navItem(context)],
    )
    ],
    ),
    );
  }

}

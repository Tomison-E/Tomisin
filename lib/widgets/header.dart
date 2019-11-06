import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';
import 'navbar.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(color: CupertinoColors.darkBackgroundGray,height: 300.0,
      child: Column(
        children: <Widget>[
          NavBar(val: 2),
          SizedBox(height: 50.0,),
          Padding(padding: EdgeInsets.only(left: 50.0),child:Text("Technologies",style: TextStyle(color: Color(0xFF8591B0),fontSize: 35.0),)),
          SizedBox(height: 10.0,)
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),),
      clipper: BottomWaveClipper(),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
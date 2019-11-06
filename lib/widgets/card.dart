import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';

class cardS extends StatelessWidget {
  final String skillDetail;
  final String skill;
  final String skillIcon;
  cardS({this.skill,this.skillDetail,this.skillIcon});

  //Column1
  @override
  Widget build(BuildContext context) {
    return            Stack(
        children: <Widget>[
          Container(
            width: 300.0,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.grey[200]),
          //  color: CupertinoColors.lightBackgroundGray,
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              children:[
                Padding(child:Text(skill,style: TextStyle(color: Color(0xFF8591B0),fontSize: 20.0)),padding: EdgeInsets.only(bottom: 20.0,left: 20.0,top:50.0),),
                Flexible(child:Padding(child: Text(skillDetail,style: TextStyle(color: Color(0xFF8591B0),fontSize: 17.0,height: 1.0)),
                  padding: EdgeInsets.only(bottom: 20.0,left: 20.0,right: 20.0),),flex: 2,fit: FlexFit.loose,
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
            ),alignment: Alignment.center,),
          Padding(child: Card(color: CupertinoColors.white,child: Padding(child: IconButton(icon: Image.network(skillIcon),color: Colors.blue[400],iconSize: 24.0,),padding: EdgeInsets.all(5.0)),elevation: 2.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),margin: EdgeInsets.only(right: 10.0)),padding: EdgeInsets.only(left: 15.0),)
        ]
    );
  }
}




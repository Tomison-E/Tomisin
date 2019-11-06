import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';
import 'model/skills.dart';
import 'DB/skillsDB.dart';
import 'widgets/card.dart';
import 'widgets/footer.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/header.dart';


class Skills extends StatelessWidget {
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
          body:SingleChildScrollView(
            child: Column(
              children: <Widget>[Header(),Body(), Container(color: CupertinoColors.darkBackgroundGray,child: Footer())],
            ),
          )
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
  final List<Skill> sk = SkillsViewModel().getSkills();

  @override
  Widget build(BuildContext context) {
    double t =  MediaQuery.of(context).size.width;

 return Container(child: GridView.count(crossAxisCount: (t<=940)?3:3,children: sk.map((f)=> cardS(skill: f.skill,skillDetail: f.skillDetails,skillIcon: f.skillData)).toList(),mainAxisSpacing: 10.0,crossAxisSpacing: 10.0,shrinkWrap: true,childAspectRatio: 1.0,),width: 900.0,margin: EdgeInsets.only(top:50.0,left: 20.0,right: 20.0,bottom: 100.0));
  }
}

class SmallChild extends StatelessWidget {
  final List<Skill> sk = SkillsViewModel().getSkills();
  @override
  Widget build(BuildContext context) {
    return Container(child:GridView.count(crossAxisCount: 1,children: sk.map((f)=> cardS(skill: f.skill,skillDetail: f.skillDetails,skillIcon: f.skillData)).toList(),mainAxisSpacing: 10.0,crossAxisSpacing: 10.0,shrinkWrap: true,childAspectRatio: 1.2,physics: ScrollPhysics(),),width: 300.0,margin: EdgeInsets.only(top: 50.0,bottom: 100.0),alignment: Alignment.center,);
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
 https://stackoverflow.com/questions/17822578/sending-an-smtp-email-in-dart
 */
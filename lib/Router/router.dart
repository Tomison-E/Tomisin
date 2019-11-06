import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import '../main.dart';
import '../projects.dart';
import '../skills.dart';
import 'notfound/notfound_page.dart';
import '../utils/UiData/uiData.dart';
import '../bio.dart';



class Router {

    static Route<dynamic> generateRoute(settings) {

      switch (settings.name) {
        case UIData.homeRoute:
          return MaterialPageRoute(builder: (_) => HomePage());
          break;
        case UIData.skillsRoute:
          return MaterialPageRoute(builder: (_) => Skills());
          break;
        case UIData.profileRoute:
        // final ProfileViewArguments args = settings.arguments;
          return MaterialPageRoute(builder: (_) => Bio());
          break;
        case UIData.projectsRoute:
        // final ProfileViewArguments args = settings.arguments;
          return MaterialPageRoute(builder: (_) => Projects());
          break;
      /*  case UIData.profileRoute:
         // final ProfileViewArguments args = settings.arguments;
          return MaterialPageRoute(builder: (_) => Profile(user: users[0]));
          break;*/
      }
    }

    static Route<dynamic>  unknownRoute (settings) {
      return new MaterialPageRoute(
        builder: (context) => new NotFoundPage(
        ));
    }

}


/*  Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Accept Arguments Screen',
                    'This message is extracted in the onGenerateRoute function.',
                  ),*/


/*final ScreenArguments args = ModalRoute.of(context).settings.arguments;*/

/*constructor*/


/*  bool value = await Navigator.of(context).push(new MaterialPageRoute<bool>(
    builder: (BuildContext context) {}));*/

/*Navigator.of(context).pop(true);*/
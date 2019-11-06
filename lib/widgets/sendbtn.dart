import 'package:flutter_web/material.dart';
import '../utils/responsiveLayout.dart';
import '../utils/mailer.dart';
import '../model/textValue.dart';

class SendBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue[400],Colors.blue[200] ,
            ], begin: Alignment.bottomRight, end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF6078ea).withOpacity(.3),
                  offset: Offset(0.0, 8.0),
                  blurRadius: 8.0)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              main();
              Navigator.of(context).pop();
             _ackAlert(context);
          //    Alert.toast(context,"Very long toast",position: ToastPosition.bottom, duration: ToastDuration.long);
            },
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Notify",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat-Bold",
                          fontSize: ResponsiveLayout.isSmallScreen(context)
                              ? 12
                              : ResponsiveLayout.isMediumScreen(context)
                                  ? 12
                                  : 16,
                          letterSpacing: 1.0)),
                  SizedBox(
                    width: ResponsiveLayout.isSmallScreen(context)
                        ? 4
                        : ResponsiveLayout.isMediumScreen(context) ? 6 : 8,
                  ),
                  Image.network(
                    "assets/sent.png",
                    color: Colors.white,
                    width: ResponsiveLayout.isSmallScreen(context)
                        ? 12
                        : ResponsiveLayout.isMediumScreen(context) ? 12 : 20,
                    height: ResponsiveLayout.isSmallScreen(context)
                        ? 12
                        : ResponsiveLayout.isMediumScreen(context) ? 12 : 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Builder(BuildContext context){
    return (context) {
     return  Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Show Snackbar'),
        duration: Duration(seconds: 3),
      ));
    };
  }

  Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
  context: context,
  builder: (BuildContext context) {
  return AlertDialog(
  title: Text('Notification',style: TextStyle(color: Color(0xFF8591B0))),
  content: Text(textValue.report ? "I have been notified about your interest, I will be reaching out to you. Cheers" : "Unsuccesful, Invalid email address. Please try again",style: TextStyle(color: Color(0xFF8591B0)),),
  );
  },
  );
  }

}


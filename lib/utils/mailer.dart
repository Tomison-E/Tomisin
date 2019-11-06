import 'package:http/http.dart' as http;
//import 'package:firebase_web/firebase.dart' as fb;
//import 'package:firebase_web/src/assets/assets.dart';

import 'package:firebase/firebase.dart' ;
import 'package:firebase/firestore.dart' as fs;
import '../model/textValue.dart';

main()  {
  //Use for firebase package development only
 // await config();

/*    initializeApp(
        apiKey: "AIzaSyBFuePojxG8ixS1Drk8rciN44lc_jOEoTk",
        authDomain: "tomisin-edc61.firebaseapp.com",
        databaseURL: "https://tomisin-edc61.firebaseio.com",
        storageBucket: "",
        projectId: "tomisin-edc61");*/

    fs.Firestore store = firestore();
    fs.CollectionReference ref = store.collection("users");



  /*  ref.onSnapshot.listen((querySnapshot) {
      querySnapshot.docChanges().forEach((change) {
        if (change.type == "added") {
          // Do something with change.doc
        }
      });
    });*/
bool validation = validateEmail(textValue.myController.text);

if(validation) {
  ref.add({
    "email": textValue.myController.text
  }).then((onValue) {
    print(onValue);
  }).catchError((error) {
    print(error);
  });
}

textValue.report = validation;
textValue.myController.text = "";
  }




bool validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return false;
  }
  else {
    return true;
  }
}




//import 'dart:async';

/*
main() async {
  String username = 'lilboythomson@gmail.com';
  String password = 'science16280DEC';

  final smtpServer = gmail(username, password);
  // Use the SmtpServer class to configure an SMTP server:
  // final smtpServer = SmtpServer('smtp.domain.com');
  // See the named arguments of SmtpServer for further configuration
  // options.

  // Create our message.
  final message = Message()
    ..from = Address(username, 'Esan Tomisin')
    ..recipients.add('tomiesan@yahoo.com')
    ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
    ..bccRecipients.add(Address('bccAddress@example.com'))
    ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
    ..text = 'This is the plain text.\nThis is line 2 of the text part.'
    ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Message not sent.');
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }
  // DONE


  // Let's send another message using a slightly different syntax:
  //
  // Addresses without a name part can be set directly.
  // For instance `..recipients.add('destination@example.com')`
  // If you want to display a name part you have to create an
  // Address object: `new Address('destination@example.com', 'Display name part')`
  // Creating and adding an Address object without a name part
  // `new Address('destination@example.com')` is equivalent to
  // adding the mail address as `String`.
  final equivalentMessage = Message()
    ..from = Address(username, 'Your name')
    ..recipients.add(Address('tomiesan@yahoo.com'))
    ..ccRecipients.addAll([Address('destCc1@example.com'), 'destCc2@example.com'])
    ..bccRecipients.add('bccAddress@example.com')
    ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
    ..text = 'This is the plain text.\nThis is line 2 of the text part.'
    ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

  final sendReport2 = await send(equivalentMessage, smtpServer);

  // Sending multiple messages with the same connection
  //
  // Create a smtp client that will persist the connection
  var connection = PersistentConnection(smtpServer);

  // Send the first message
  await connection.send(message);

  // send the equivalent message
  await connection.send(equivalentMessage);

  // close the connection
  await connection.close();


}*/

mains() {
 /* http.post("https://api.mailgun.net/v3/sandboxb060e024534d4a2783d446a058dea150.mailgun.org/messages?from=%27Excited User <mailgun@YOUR_DOMAIN_NAME>%27&to=bar@example.com&subject=%27Hello%27&text=%27Testing some Mailgun awesomeness!%27").then((contents) {
    print(contents); // Here we output the contents of google.com.
  });*/

  const data = {
    "from": "Excited User <mailgun@sandboxb060e024534d4a2783d446a058dea150.mailgun.org>",
    "to": "lilboythomson@gmail.com",
    "subject": "Hello",
    "text": "Testing some Mailgun awesomeness!"
  };

  const body="------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"from\"\r\n\r\nExcited User <mailgun@sandboxb060e024534d4a2783d446a058dea150.mailgun.org>\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"to\"\r\n\r\nlilboythomson@gmail.com\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"subject\"\r\n\r\nHello\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"text\"\r\n\r\nTesting some Mailgun awesomeness!\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--";

  const header={
  //"Content-Type":"application/json",
  //Authorization": "Basic YXBpOjkyNzgzNDIxMTFhYmY1YzYxMzhjMDQyMjIzM2QzYmIwLWM1MGY0YTE5LWYwNmM3ODg2",
  'Access-Control-Request-Method': 'POST',
  'Access-Control-Request-Headers': 'x-requested-with',
    'Host':'api.mailgun.net',
    'Accept':'*/*',
    'Access-Control-Allow-Origin':null,
  };

  const headers={"content-type": "multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW",
    "Content-Type":"application/json",
  "Access-Control-Allow-Origin":"http://127.0.0.1:8080"
  };
  
  //http.post("https://api.mailgun.net/v3/sandboxb060e024534d4a2783d446a058dea150.mailgun.org/messages",   headers: {"Access-Control-Allow-Credentials":"true","Access-Control-Request-Method": "POST","Access-Control-Allow-Origin":"*","Access-Control-Allow-Headers":"X-Custom-Header","api": "9278342111abf5c6138c0422233d3bb0-c50f4a19-f06c7886"},body:data ).then((contents){
    //print(contents);
  //});
//"api": "9278342111abf5c6138c0422233d3bb0-c50f4a19-f06c7886",

/*
  http.post("https://api.mailgun.net/v3/sandboxb060e024534d4a2783d446a058dea150.mailgun.org/messages",   headers: {"Access-Control-Allow-Credentials":"true","Access-Control-Allow-Methods":"GET,HEAD,OPTIONS,POST,PUT","Access-Control-Allow-Origin":"*","Access-Control-Allow-Headers":"Access-Control-Allow-Origin, Access-Control-Allow-Headers, Origin, X-Requested-With, Content-Type,CORELATION_ID","api": "9278342111abf5c6138c0422233d3bb0-c50f4a19-f06c7886"},body:data ).then((contents){
    print(contents);
  });
 */

//http.post("https://api.mailgun.net/v3/sandboxb060e024534d4a2783d446a058dea150.mailgun.org/messages",body: body).then((contents){
  //print(contents);
  //});


http.post("https://google.com").then((contents){
  print(contents);
});

}
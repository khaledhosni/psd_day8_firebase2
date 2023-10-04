import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

/*
 1 -create project on firebase console https://console.firebase.google.com/
 2- initialize  flutterfire --> [flutter pub add firebase_core]
 3- run  [flutterfire configure] command
   ******************************************************************

   for first time initialization
    1- install nodejs https://nodejs.org/en/download select LTS version
    1.1- npm install -g firebase-tools
    2-flutter pub add firebase_core
    3-dart pub global activate flutterfire_cli  (don't forget to update your path)
    4- run [ firebase login ] or firebase login--reauth
 */

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//https://pub.dev/packages/firebase_messaging/example
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    printToken();

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }



  printToken()async{
    final fcmToken = await FirebaseMessaging.instance.getToken();
    await FirebaseMessaging.instance.onTokenRefresh.listen((token) {
      sendTokenToServer();
    });
    print(fcmToken);
  }


  sendTokenToServer(){
    // write code of sending token to my backend server
  }


  _handleMessage(){

    // handle incoming message
  }





}

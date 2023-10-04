import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psd_day8_firebase2/main.dart';
import 'package:psd_day8_firebase2/mvvm_sample/HomePageViewModel.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageViewModel(), // Provide an instance of your ViewModel
      child: MaterialApp(
        title: 'Flutter ViewModel Example',
        home: MyHomePage(title: "Hello"),
      ),
    );
  }
}






import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psd_day8_firebase2/mvvm_sample/HomePageViewModel.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<HomePageViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ViewModel Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${counterViewModel.counterValue}',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => counterViewModel.increment(),
                ),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () => counterViewModel.decrement(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

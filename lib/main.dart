import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fresh News',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latest News'),

        ),
        body:Text('Latest News will be displayed here...') ,
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:notee/themes/default.dart';

void main() => runApp(Notee());

class Notee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutTheme(
      child: MaterialApp(
        title: 'Notee',
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LayoutTheme.of(context).background
        ),
        child: Center(child: Text('Home')),
      )
    );
  }
}

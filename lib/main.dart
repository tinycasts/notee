import 'package:flutter/material.dart';
import 'package:notee/themes/default.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
        child: Center(
          child: GestureDetector(
            child: Text('Home', style: LayoutTheme.of(context).text.title),
            onTap: () async {
              DocumentReference doc = Firestore.instance.collection('notes').document();
              await doc.setData({ 'title': 'New Note', 'description': 'Cool note' });
              print('Done writing doc ${doc.documentID}');
            },
          )
        ),
      )
    );
  }
}

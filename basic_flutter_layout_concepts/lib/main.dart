import 'package:basicflutterlayoutconcepts/_07_icon_widget.dart';
import 'package:basicflutterlayoutconcepts/_09_putting_it_all_together.dart';
import 'package:flutter/material.dart';
import '_01_axis_size_and_alignment.dart';
import '_02_flexible_widget.dart';
import '_03_expanded_widget.dart';
import '_04_sizedbox_widget.dart';
import '_05_spacer_widget.dart';
import '_06_text_widget.dart';
import '_08_image_widget.dart';
import '_10_putting_it_all_together.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Basic Flutter Layout Concepts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AxisSizeAndAlignment();
                }));
              },
              child: Text('AxisSizeAndAlignment'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FlexibleWidget();
                }));
              },
              child: Text('Flexible widget'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ExpandedWidget();
                }));
              },
              child: Text('Expanded widget'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SizedBoxWidget();
                }));
              },
              child: Text('SizedBox widget'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SpacerWidget();
                }));
              },
              child: Text('Spacer widget'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextWidget();
                }));
              },
              child: Text('Text widget'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IconWidget();
                }));
              },
              child: Text('Icon widget'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ImageWidget();
                }));
              },
              child: Text('Image widget'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PuttingItAllTogether();
                }));
              },
              child: Text('Putting it all together(my)'),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PuttingItAllTogether10();
                }));
              },
              child: Text('Putting it all together'),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

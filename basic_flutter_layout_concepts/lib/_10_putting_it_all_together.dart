import 'package:basicflutterlayoutconcepts/_07_icon_widget.dart';
import 'package:flutter/material.dart';

class PuttingItAllTogether10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Putting it all together'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle, size: 50),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flutter McFlutter',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    'Experienced App Developer',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '123 Main Street',
              ),
              Text('415-555-0198'),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.accessibility),
              Icon(
                Icons.timer,
              ),
              Icon(
                Icons.phone_android,
              ),
              Icon(
                Icons.phone_iphone,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

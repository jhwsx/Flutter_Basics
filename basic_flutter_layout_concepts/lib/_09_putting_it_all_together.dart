import 'package:flutter/material.dart';

class PuttingItAllTogether extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Putting it all together'),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Image.asset('assets/images/avatar.png'),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Text(
                        'Flutter McFlutter',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Experienced App Developer',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '123 Main Street',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '(415)555-0198',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/child.png'),
                Image.asset('assets/images/clock.png'),
                Image.asset('assets/images/phone1.png'),
                Image.asset('assets/images/phone2.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

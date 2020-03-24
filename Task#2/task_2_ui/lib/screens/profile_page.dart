import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final image = AssetImage('assets/images/greg.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                    top: 40.0
                  ),
                  child: IconButton(icon: Icon(Icons.burst_mode), onPressed: () => Navigator.pop(context), iconSize: 50.0, color: Colors.grey[600],),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                top: 30.0,
                right: 20.0
              ),
              child: Row(
                children: <Widget>[
                  CircleAvatar(backgroundImage: image, radius: 50.0,),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Greg Dawg', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0
                              ),
                              child: Icon(Icons.account_box, color: Colors.purple,),
                            )
                          ],
                        ),
                        Text('\nStudent of Graphic Design.\nPassionate about photography,\nculture and rock music. Tim is\nnot my father.', style: TextStyle(fontSize: 15.0, color: Colors.grey[600])),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 165.0
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on, color: Colors.grey[600]),
                  Text('Warsaw, Poland', style: TextStyle(color: Colors.grey[600]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                top: 30.0,
                right: 40.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Photos', style: TextStyle(fontSize: 15.0, color: Colors.grey[600])),
                      Text('235', style: TextStyle(fontSize: 30.0))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Followers', style: TextStyle(fontSize: 15.0, color: Colors.grey[600])),
                      Text('2232', style: TextStyle(fontSize: 30.0))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Follows', style: TextStyle(fontSize: 15.0, color: Colors.grey[600])),
                      Text('351', style: TextStyle(fontSize: 30.0))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                top: 30.0
              ),
              child: Row(
                children: <Widget>[
                  Text('Activity', style: TextStyle(fontSize: 20.0, color: Colors.grey[600], fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      right: 12.0
                    ),
                    child: Icon(Icons.exposure_plus_2, size: 25.0, color: Colors.grey[600],),
                  ),
                  Icon(Icons.more_horiz, size: 25.0, color: Colors.grey[600],)
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
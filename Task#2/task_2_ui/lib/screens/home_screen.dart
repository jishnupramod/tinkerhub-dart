import 'package:flutter/material.dart';
import 'package:task_2_ui/screens/profile_page.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final image = AssetImage('assets/images/greg.jpg');
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            top: 40.0,
            right: 20.0
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => ProfilePage()),
                      ),
                      child: CircleAvatar(backgroundImage: image, radius: 28.0))
                  ],
                ),
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 60.0,
                          top: 50 
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Hello Greg!', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 60.0
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Today', style: TextStyle(color: Colors.grey[700], fontSize: 15.0)),
                            IconButton(icon: Icon(Icons.mode_edit), onPressed: null,)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 60.0,
                    right: 20.0
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('Overall', style: TextStyle(color: Colors.grey[850], fontSize: 20.0)),
                          Icon(Icons.keyboard_arrow_down, color: Colors.grey[700],)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ]
          )
        )
      )
    );
  }
}

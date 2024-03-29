import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,30.0,20.0,0.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://img.pngio.com/profile-icon-png-image-free-download-searchpngcom-profile-icon-png-673_673.png'),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('12',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                'posts',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('300',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                'followers',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('345',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                'following',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 200.0,
                        child: FlatButton(
                          onPressed: ()=> print('Edit Profile'),
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text(
                              'Edit Profile',
                          style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Username',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  height: 80.0,
                  child: Text('Bio',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),),
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

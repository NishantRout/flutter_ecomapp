import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:flutter_ecomapp/components/horizontal_listview.dart';
import 'package:flutter_ecomapp/components/products.dart';
import 'package:flutter_ecomapp/pages/cart.dart';
import 'package:flutter_ecomapp/pages/user_profile.dart';
import 'package:flutter_ecomapp/services/authentication..dart';



class HomePage extends StatefulWidget {
  HomePage({Key key, this.auth, this.userId, this.logoutCallback})
      : super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override

  signOut() async {
    try {
      await widget.auth.signOut();
      widget.logoutCallback();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 220.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.white,
        indicatorBgPadding: 6.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Color(0xffde5145),
        title: Text("Fash App"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){

            },
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
            },
          ),
          new IconButton(
            icon: Icon(Icons.power_settings_new),
            color: Colors.white,
            onPressed: signOut,
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text("Nishant Rout"),
              accountEmail: Text("nishantnarayanrout@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Color(0xffde5145)
              ),
            ),
            //body
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(Icons.home, color: Color(0xffde5145),),
                title: Text("Home Page"),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new ProfileScreen()));
              },
              child: ListTile(
                leading: Icon(Icons.person, color: Color(0xffde5145),),
                title: Text("My Account"),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(Icons.shopping_basket, color: Color(0xffde5145),),
                title: Text("My Orders"),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Color(0xffde5145),),
                title: Text("Shopping Cart"),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(Icons.favorite, color: Color(0xffde5145),),
                title: Text("Favourites"),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.grey,),
                title: Text("Settings"),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.grey,),
                title: Text("About"),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //image carousel begins here
          image_carousel,

          //padding widget
          new Padding(padding: const EdgeInsets.fromLTRB(22.0,8.0,22.0,8.0),
            child: new Text("Categories"),
          ),

          //horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(22.0),
            child: new Text("Recent Products"),
          ),

          //Grid view
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
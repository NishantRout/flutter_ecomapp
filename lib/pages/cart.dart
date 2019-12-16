import 'package:flutter/material.dart';

//my imports
import 'package:flutter_ecomapp/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Color(0xffde5145),
        title: Text("Cart"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){

            },
          ),
        ],
      ),
      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text(
                  "Total:"
                ),
                subtitle: new Text(
                  "\$230",
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new MaterialButton(
                    onPressed: () {

                    },
                child: new Text("Check out", style: TextStyle(color: Colors.white),),
                color: Color(0xffde5145),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'views/SaleScreen.dart';
import 'package:bbapp_training/widgets/DrawerSideBar.dart';
import 'package:flutter/material.dart';
import 'views/HelperSaleScreen.dart';
import 'views/LoginScreen.dart';

void main() => runApp(MaterialApp(
    home: HomeScreen(),
    routes: {
      '/Login': (context) => Login_Page(),
      '/Sales': (context) => Sales_Page(),
      '/HelperSale': (context) => HelperSale_Page(),
    }
));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:Text('App Démos',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
            ),
            centerTitle: true,
            elevation: 10,
            backgroundColor: Colors.orangeAccent,

          ),
            drawer: DrawerSideBar(),
          body: Container(
            child:Center(
                child:Text('My home page')
            )
          ),

        )
    );
  }
}

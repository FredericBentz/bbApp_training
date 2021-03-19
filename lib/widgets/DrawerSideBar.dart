import 'package:flutter/material.dart';

class DrawerSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text('Header')),
          CustomListTile(Icons.person, 'Login',
              () => {Navigator.pushNamed(context, '/Login')}),
          CustomListTile(Icons.account_box, 'Ventes',
              () => {Navigator.pushNamed(context, '/Sales')}),
          CustomListTile(Icons.settings, 'Configuration',
              () => {Navigator.pushNamed(context, '/HelperSale')}),
          CustomListTile(Icons.lock, 'Menu... 4', () => {}),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  Widget Title() => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(text, style: TextStyle(fontSize: 16)),
      );

  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: onTap,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  Title(),
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}

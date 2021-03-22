import 'package:flutter/material.dart';

import 'CustomInputField.dart';

class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  bool val1 = false;
  bool val2 = false;
  void onchange(s){
    setState(() {
      val1 =s;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              widthFactor: 0.6,
              heightFactor: 0.6,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                color: Color.fromRGBO(255, 255, 255, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 400,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/life.jpeg',width: 80,height:80,),
                        )),
                    CustomInputField(
                        Icon(Icons.person, color: Colors.white), 'Identifiant'),
                    CustomInputField(
                        Icon(Icons.lock, color: Colors.white), 'Mot de Passe'),

                    //ici mettre le checkbox se rappeler de moi
                    Padding(
                      padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child: Row(

                        children: [
                          Checkbox(
                              activeColor: Colors.deepOrange,
                              value: val1, onChanged: onchange),
                          Text(
                            'se souvenir de moi',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: 150,
                      child: RaisedButton(onPressed: (){},color: Colors.deepOrange,textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text('Connexion',style: TextStyle(
                            fontSize: 20.0
                        ),),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
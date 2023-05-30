import 'package:flutter/material.dart';
import 'package:gamingstore/homepage.dart';

class MyappInicio extends StatefulWidget {
  const MyappInicio({super.key});

  @override
  State<MyappInicio> createState() => _MyappInicioState();
}

class _MyappInicioState extends State<MyappInicio> {
  bool? _checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 140.0,
                backgroundColor: Color.fromARGB(0, 24, 1, 1),
                backgroundImage: AssetImage(
                  'assets/LOGOgamingstore.png',
                ),
              ),
              Text(
                'Login',
                style: TextStyle(fontFamily: 'cursive', fontSize: 50.0),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'UserName',
                    labelText: 'UserName',
                    suffixIcon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'UserEmail',
                    labelText: 'UserEmail',
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                height: 65.0,
              ),
              MaterialButton(
                  minWidth: 385.0,
                  height: 50.0,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  color: Colors.black,
                  child: Text('Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 15))),
              Divider(
                height: 75.0,
              ),
              CheckboxListTile(
                title: Text('Aceptar politicas de privacidad'),
                secondary: Icon(Icons.verified),
                controlAffinity: ListTileControlAffinity.platform,
                value: _checked,
                onChanged: (newbool) {
                  setState(() {
                    _checked = newbool;
                  });
                },
                activeColor: Colors.black,
                checkColor: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Title(color: Colors.white, child:Text("Mobx")),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "E-mail"),
                enableSuggestions: false,
                autocorrect: false,
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)
                ),
                minWidth: double.infinity,
                height: 57.0,
                child: Text(
                  'Continuar',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.blue,
                disabledColor: Colors.grey,
              ))

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_new_mobx/stores/email_store.dart';

class HomeScreenMobx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailStore = EmailStore();

    void _nextStep() {
      print("Botão ativado");
    }

    print("Desenhando a tela ..");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Title(color: Colors.white, child: Text("Utilizando Mobx")),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: emailStore.changeEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "E-mail"),
                enableSuggestions: false,
                autocorrect: false,
              ),
              Observer(builder: (_) => materialButton(emailStore, _nextStep))
            ],
          ),
        ),
      ),
    );
  }

  Padding materialButton(EmailStore emailStore, void _nextStep()) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          minWidth: double.infinity,
          height: 57.0,
          child: Text(
            'Continuar',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: emailStore.buttonEnable ? _nextStep : null,
          textColor: Colors.white,
          color: Colors.blue,
          disabledColor: Colors.grey,
        ));
  }
}

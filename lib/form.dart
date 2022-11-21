import 'package:flutter/material.dart';

import 'main.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  TextEditingController nameCtrl = new TextEditingController();
  TextEditingController fechaCtrl = new TextEditingController();
  TextEditingController direccionCtrl = new TextEditingController();
  TextEditingController estaturaCtrl = new TextEditingController();
  TextEditingController pesoCtrl = new TextEditingController();
  TextEditingController temperaturaCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Registrar nuevo paciente'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(60.0),
            child: new Form(
              key: keyForm,
              child: formUI(),
            ),
          ),
        ),
      ),
    );
  }

  formItemsDesign(icon, item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  Widget formUI() {
    return Column(
      children: <Widget>[
        formItemsDesign(
            Icons.person,
            TextFormField(
              controller: nameCtrl,
              decoration: new InputDecoration(
                labelText: 'Nombres',
              ),
            )),
        formItemsDesign(
            Icons.date_range,
            TextFormField(
              controller: fechaCtrl,
              decoration: new InputDecoration(
                labelText: 'Fecha de nacimiento',
              ),
            )),
        formItemsDesign(
            Icons.location_on,
            TextFormField(
              controller: direccionCtrl,
              decoration: new InputDecoration(
                labelText: 'Direccion del paciente',
              ),
            )),
        formItemsDesign(
            Icons.height,
            TextFormField(
              controller: estaturaCtrl,
              decoration: new InputDecoration(
                labelText: 'Estatura del paciente',
              ),
            )),
        formItemsDesign(
            Icons.balance,
            TextFormField(
              controller: pesoCtrl,
              decoration: new InputDecoration(
                labelText: 'Peso del paciente',
              ),
            )),
        formItemsDesign(
            Icons.line_weight,
            TextFormField(
              controller: temperaturaCtrl,
              decoration: new InputDecoration(
                labelText: 'Temperatura del paciente',
              ),
            )),

        GestureDetector(
            child: Container(
              margin: new EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                gradient: LinearGradient(colors: [
                  Color(0xFF0EDED2),
                  Color(0xFF03A0FE),
                ],
                    begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: MaterialButton(
                onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Button()),
                );
              },
              child: Text("Guardar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            ))),
      ],
    );
  }
}

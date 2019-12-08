import 'dart:math';
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
                ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Classify this transaction into a particular category",
            style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0)),
          ],
        ),
      ),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ],
        )));

    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ])),
        ));

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa,
        )
      ],
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pink,
        textTheme: Theme.of(context).textTheme
        .copyWith( caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0)))
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container()
          )
        ],
      ),
    );
  }

  Widget _botonesRedondeados(){
    return Table(

      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueAccent, Icons.swap_calls, "Llamar"),
            _crearBotonRedondeado(Colors.cyanAccent, Icons.notification_important, "Notificar"),
            ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.orangeAccent, Icons.delete, "Borrar"),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.shopping_cart, "Comprar"),
          ]
          
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.orangeAccent, Icons.delete, "Borrar"),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.shopping_cart, "Comprar"),
          ]
          
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.orangeAccent, Icons.delete, "Borrar"),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.shopping_cart, "Comprar"),
          ]
          
        )
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return ClipRect(
          child: BackdropFilter(
        filter: prefix0.ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
            child: Container(
          margin: EdgeInsets.all(10.0),
          height: 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color.fromRGBO(62, 66, 107, 0.7)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor:color,
                child: Icon(icono, color: Colors.white,size: 30.0,),
                radius: 40.0,
              ),

              Text(texto,style: TextStyle(color: color,fontWeight: FontWeight.bold),),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
    );
  }
}

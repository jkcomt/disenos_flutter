import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _pagina1(),
        _pagina2(),
      ],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[_colorFondo(), _imagenFondo(), _textos()],
    );
  }

  Widget _colorFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 0.5),
    );
  }

  Widget _imagenFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage("assets/scroll-1.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Text('11°', style: estiloTexto),
          Text('Miércoles', style: estiloTexto),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 0.5),
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          onPressed: (){},
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
            child: Text('Bienvenidos',style: TextStyle(fontSize: 20.0),),
          ),
        ),
      ),
    );
  }
}

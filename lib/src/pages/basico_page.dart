import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final styleTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final styleSubTitulo = TextStyle(fontSize: 18, color: Colors.grey);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

            _crearImage(),
            _crearTitulo(),
            _crearIconos(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ]
          ),
          ),
        ),
      );
    }
                        
  Widget  _crearImage() {
      return Container(
        width: double.infinity,
        child: Image(
          fit: BoxFit.cover,
          height: 200,
        image: NetworkImage(
              'https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine-683x390.jpg'),
        ),
      );
  }
            
  Widget _crearTitulo() {
     
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Playa Verano",
                  style: styleTitulo,
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text("Una playa en verano", style: styleSubTitulo)
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
    }

   Widget _crearIconos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      
      _accion(Icons.call,'call'),
      _accion(Icons.near_me,'route'),
      _accion(Icons.share,'share'),
          ],);
      }
      }
      
  Widget _accion(IconData icon, String text) {
    return Column(children: <Widget>[
        Icon( icon , color :Colors.blue),
        SizedBox(height: 5,),
        Text( text ,style: TextStyle(color: Colors.blue,fontSize: 15),)
      ],);
  }

  Widget _crearTexto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Text('Adipisicing exercitation fugiat mollit consequat dolor nisi ullamco incididunt et velit. Cupidatat non id ad ex aliquip sunt veniam nulla est reprehenderit. Sunt veniam cupidatat in nostrud fugiat consequat sunt ex amet. Commodo minim sunt laborum ipsum consequat enim. Anim reprehenderit mollit sint ad excepteur dolore. Cupidatat laboris do sunt mollit aliquip culpa duis aliqua reprehenderit voluptate. Cupidatat ullamco magna nostrud do esse qui laboris minim sit tempor commodo ut adipisicing sit.',
      textAlign: TextAlign.justify,));
  }

 

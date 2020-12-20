import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSUB = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _boton(context),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con niña',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Sentada de pana',
                    style: estiloSUB,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '4,1',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.green,
          size: 40.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 18.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Text(
          'Para resumir, el negativismo no es mejor que el positivismo al que critica: ambos son demasiado timoratos como para contribuir a desarrollar el conocimiento. Ambas posiciones bordean el «no-conocerismo». Peor aún, el escepticismo radical no es muy diferente del dogmatismo, ya que ambos son sólo ejemplos de X-ismos. [He] aquí lo que yo llamo la Paradoja del Escéptico: todo aquel que es radical y coherentemente escéptico acaba siendo tan crédulo como el dogmático ingenuo, porque no puede invocar un solo argumento en contra de la imposibilidad de hecho alguno',
          textAlign: TextAlign.justify),
    );
  }

  Widget _boton(BuildContext context) {
    final route = MaterialPageRoute(builder: (context) {
      return ScrollPage();
    });

    return Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.deepPurpleAccent,
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text('Segunda Vista', style: TextStyle(fontSize: 20.0)),
            ),
            onPressed: () {
              Navigator.push(context, route);
            }));
  }
}

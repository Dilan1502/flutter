import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class MyApp extends StatelessWidget {
  static String _title = 'hola';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Dilan(),
    );
  }
}

class Dilan extends StatefulWidget {
  Dilan({super.key});

  @override
  State<Dilan> createState() => _DilanState();
}

class _DilanState extends State<Dilan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DILAN BRANDON HARO BUSTAMANTE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
              width: 350,
              child: Image.network(
                  'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2020/04/hipertextual-venom-2-tiene-titulo-oficial-pero-su-estreno-se-hara-esperar-hasta-2021-2020930689.jpg?fit=1200%2C675&quality=50&strip=all&ssl=1'),
            ),
            Container(
              child: const Text(
                'VENOM',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 6.0,
                  color: Color.fromRGBO(14, 1, 17, 1),
                  fontFamily: 'cursive',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Lógica para el botón "BACK"
                  },
                  child: Text('BACK'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                SizedBox(
                    width: 10), // Ajusta el valor para la separación deseada
                ElevatedButton(
                  onPressed: () {
                    // Lógica para el botón "NEXT"
                  },
                  child: Text('NEXT'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  BootstrapIcons.telegram,
                  color: Colors.blue,
                ),
                SizedBox(
                    width: 10), // Ajusta el valor para la separación deseada
                Icon(
                  BootstrapIcons.instagram,
                  color: Color.fromARGB(255, 186, 11, 122),
                ),
                SizedBox(
                    width: 10), // Ajusta el valor para la separación deseada
                Icon(
                  BootstrapIcons.twitch,
                  color: Colors.purpleAccent,
                ),
                SizedBox(
                    width: 10), // Ajusta el valor para la separación deseada
                Icon(
                  BootstrapIcons.twitter,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

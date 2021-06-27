import 'package:flutter/material.dart';
//import 'package:navigator_page/pages/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/second",
                  arguments: ScreenArguments('Mikael'));
            },
            child: Text("Mostrar segunda pagina")),
      ),
    );
  }
}

class ScreenArguments {
  final String name;

  ScreenArguments(this.name);
}

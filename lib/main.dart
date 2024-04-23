import 'package:flutter/material.dart';
import 'package:listview/Contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView builder'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder:  (BuildContext contex,int index){
          return ListTile(
                leading: CircleAvatar(child: Text(
                    contatos[index].nomeCompleto[0]+contatos[index].nomeCompleto[contatos[index].nomeCompleto.indexOf(' ')+1]),
                  ),
                title: Text(contatos[index].nomeCompleto),
                subtitle: Text(contatos[index].email),
              ) ;
          // Text('Text',style: TextStyle(fontSize: 20),);
          // return ListView(
          //   children: const <Widget>[
          //     ListTile(
          //       leading: CircleAvatar(),
          //       title: Text(''),
          //       subtitle: Text('Test'),
          //     )
          //   ],
          // );
        },
      ),
    );
  }
}
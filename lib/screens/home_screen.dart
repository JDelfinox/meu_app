import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 67, 132, 235),
        titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            // Foto de Perfil do usuário no lado direito
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipOval(
                            child: Image.asset('lib/assets/images/perfil.jpg',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                            ),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Sair'),
                            )
                        ]
                      ),
                    ), 
                    );
                  }
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/images/perfil.jpg'),
              )
            )
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text
            ('menu Lateral',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Pagina Inicial'),
              onTap: () {
                Navigator.pop(context);
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
              }
            )
          ]
        )
      ),
      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                onChanged: (value) {
                  print('Texto Digitado $value');
                },
                decoration: InputDecoration(
                  hintText: 'Pesquisar...',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                )
              )
            )
          )
        ]
      )
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/bike.jpg',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: Text('Ir para o formulário'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:practica3_5a24/screens/inpust.dart';
import 'package:practica3_5a24/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de componentes de flutter'),
      ),
        body: ListView(
          children: <Widget> [
            ListTile(
              title: Text('Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge
                  ),
              subtitle: Text('Recuperar contraseñas',
              style: AppTheme.lightTheme.textTheme.bodySmall
                ),
              leading: const Icon(Icons.input_rounded,
               color: AppTheme.primaryColor),
              trailing: const Icon(Icons.arrow_right_alt_outlined,
               color: AppTheme.secondaryColor),
                onTap: () {
                 final ruta1 = MaterialPageRoute(builder: (context){
                  return const Inputs();
                 } );
                 Navigator.push(context, ruta1);
               },
            ),
            const Divider(),
            ListTile(
              title: Text('Lista infinita',
              style: AppTheme.lightTheme.textTheme.headlineLarge
                ),
              subtitle: Text('Recuperar muchos elementos',
                style: Theme.of(context).textTheme.bodySmall,
                ),
              leading: const Icon(Icons.list_alt_sharp,
               color: AppTheme.primaryColor),
               
              trailing: const Icon(Icons.arrow_right_outlined,
               color: AppTheme. secondaryColor),
              
            ),
            ListTile(
              title: Text('Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge
                ),
              subtitle: Text('Manejo de notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge
                ),
              leading: const Icon(Icons.notification_important,
               color: AppTheme.primaryColor),
              trailing: const Icon(Icons.arrow_right_outlined,
               color: AppTheme.secondaryColor),
            )
            ],
          ),
      );
  }
}
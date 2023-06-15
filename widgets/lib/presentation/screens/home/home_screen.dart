import 'package:flutter/material.dart';
import 'package:widgets/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter + Material 3'),
        ),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({Key? key}) : super(key: key);

  
  final items = appMenuItems;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        
        return ListTile(
          title: Text(items[index].title),
          subtitle: Text(items[index].subtitle),
          leading: Icon(items[index].icon, color: colors.primary),//Icono antes del widget
          trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary), //Icono del final
          onTap: () {
            // navegar a otra pantalla
          },
        );
      },
    );
  }
}

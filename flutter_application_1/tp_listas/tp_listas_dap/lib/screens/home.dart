import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listas_dap/core/data/maquillaje.dart';
import 'package:tp_listas_dap/screens/detail.dart';

class home extends StatelessWidget {
  static const String name = 'home';

  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inicio',
          style: TextStyle(fontFamily: 'Roboto', fontSize: 20.0),
        ),
        backgroundColor: Colors.purple[100], // Color violeta pastel para el appbar
      ),
      body: Container(
        color: Colors.purple[50], // Color de fondo violeta pastel claro
        child: ListView.builder(
          itemCount: ListaMaquillaje.length,
          itemBuilder: (context, index) {
            Maquillaje maquillajeDeco = ListaMaquillaje[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.purple[100], // Fondo del card en violeta pastel medio
                child: ListTile(
                  leading: maquillajeDeco.urlimage != null
                      ? _getPoster(maquillajeDeco.urlimage)
                      : const Icon(Icons.gamepad),
                  title: Text(
                    maquillajeDeco.nombre,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  subtitle: Text(
                    'Marca: ${maquillajeDeco.marca}',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      color: Colors.black54,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios), // Ícono de flecha
                  onTap: () => context.pushNamed(detail.name, extra: maquillajeDeco),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _getPoster(String urlimage) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Image.network(urlimage),
    );
  }
}
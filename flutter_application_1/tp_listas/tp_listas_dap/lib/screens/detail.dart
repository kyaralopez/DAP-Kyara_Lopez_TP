import 'package:flutter/material.dart';
import 'package:tp_listas_dap/core/data/maquillaje.dart';

class detail extends StatelessWidget {
  static const String name = 'detail';

  final Maquillaje? maquillajeConfg;

  detail({Key? key, this.maquillajeConfg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalles',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        backgroundColor: Colors.purple[100], // Color violeta pastel para el appbar
      ),
      body: Container(
        color: Colors.purple[50], // Color de fondo violeta pastel claro
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9, // Proporción de aspecto de la imagen
                  child: Image.network(
                    maquillajeConfg!.urlimage,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  maquillajeConfg!.nombre,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Marca: ${maquillajeConfg!.marca}',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                  Text(
                  'Producto: ${maquillajeConfg!.producto}',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                  Text(
                  'Precio: ${maquillajeConfg!.precio}',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  maquillajeConfg!.descripcion,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
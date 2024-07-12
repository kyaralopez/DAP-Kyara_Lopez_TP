import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_listas_dap/core/data/login.dart';
import 'package:tp_listas_dap/screens/home.dart';

class login extends StatelessWidget {
  static const String name = 'login';

  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login({Key? key, required String usuario, required String contrasena})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[50], // Color de fondo violeta pastel claro
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Iniciar Sesión',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),

              // Email Box
             
              TextField(
                controller: userController,
                decoration: InputDecoration(
                  hintText: 'Ingresá tu Usuario',
                  icon: Icon(Icons.person, color: Colors.purple[300]), // Icono de usuario en violeta pastel
                ),
                obscureText: false,
              ),
              SizedBox(height: 30.0),
              
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Ingresá tu Contraseña',
                  icon: Icon(Icons.lock, color: Colors.purple[300]), // Icono de candado en violeta pastel
                ),
                obscureText: true,
              ),

              // Button
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                  onPressed: () {
                    String textoIngresadoUsuario = userController.text;
                    String textoIngresadoContrasena = passwordController.text;

                    final profileData = loginList.firstWhere(
                      (profileData) =>
                          profileData.usuario == textoIngresadoUsuario,
                      orElse: () => loginClass(usuario: "", contrasena: ""),
                    );

                    if (textoIngresadoUsuario.isEmpty ||
                        textoIngresadoContrasena.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Ingresar usuario y contraseña'),
                        ),
                      );
                    } else {
                      if (profileData.usuario == textoIngresadoUsuario &&
                          profileData.contrasena == textoIngresadoContrasena) {
                        context.pushNamed(home.name);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text('Bienvenido'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text('Inconrrecto'),
                          ),
                        );
                      }
                    }
                  },
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[200], // Color de fondo del botón en violeta pastel
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
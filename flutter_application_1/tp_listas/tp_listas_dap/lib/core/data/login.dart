
class loginClass {
  String usuario;
  String contrasena;

  loginClass ({
    required this.usuario,
    required this.contrasena,
  });
}

List<loginClass> loginList = [
  loginClass(usuario: 'Lara', contrasena: '123'),
  loginClass(usuario: 'Kyara', contrasena: '456'),
  loginClass(usuario: 'Mili', contrasena: '789'),
];

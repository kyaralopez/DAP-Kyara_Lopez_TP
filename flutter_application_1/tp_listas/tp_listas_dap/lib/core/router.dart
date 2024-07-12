import 'package:go_router/go_router.dart';
import 'package:tp_listas_dap/core/data/maquillaje.dart';
import 'package:tp_listas_dap/screens/detail.dart';
import 'package:tp_listas_dap/screens/home.dart';
import 'package:tp_listas_dap/screens/login.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: login.name,
    path: '/',
    builder: (context, state) => login(usuario: '', contrasena: '',),
  ),
  GoRoute(
    name: home.name,
    path: '/home',
    builder: (context, state) => const home(),
  ),
  GoRoute(
    name: detail.name,
    path: '/detail',
    builder: (context, state) => detail(maquillajeConfg: state.extra as Maquillaje),
  ),
]);
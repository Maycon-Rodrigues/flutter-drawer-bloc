import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:drawer_bloc/src/component/CustomDrawer.dart';
import 'package:drawer_bloc/src/pages/conta/ContaPage.dart';
import 'package:drawer_bloc/src/pages/favorito/FavoritoPage.dart';
import 'package:drawer_bloc/src/pages/home/HomeController.dart';
import 'package:drawer_bloc/src/pages/inicio/InicioPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final pages = <Widget>[InicioPage(), ContaPage(), FavoritoPage()];

  @override
  Widget build(BuildContext context) {
  final bloc = BlocProvider.getBloc<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Bloc'),
      ),
      drawer: CustomDrawer(),
      body: StreamBuilder<int>(
        stream: bloc.drawerOut,
        builder: (context, snapshot) {
          return pages[snapshot.data];
        },
      ),
    );
  }
}

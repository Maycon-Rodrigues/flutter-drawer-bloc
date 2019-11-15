import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:drawer_bloc/src/pages/home/HomeController.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.getBloc<HomeController>();

    return Drawer(
      child: StreamBuilder<int>(
      stream: bloc.drawerOut,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              selected: snapshot.data == 0,
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                bloc.drawerIn.add(0);
              },
            ),
            ListTile(
              title: Text('Conta'),
              selected: snapshot.data == 1,
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                bloc.drawerIn.add(1);
              },
            ),
            ListTile(
              title: Text('Favoritos'),
              selected: snapshot.data == 2,
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                bloc.drawerIn.add(2);
              },
            ),
          ],
        );
      },
    ));
  }
}

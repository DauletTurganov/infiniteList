import 'package:flutter/material.dart';
import 'bloc_widgets.dart';
import 'favorites.dart';

class MainPage extends StatelessWidget {
  static String id = 'main_page';

  const MainPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            MaterialButton(
            onPressed: () {
    Navigator.of(context).pushNamed(FavoritesScreen.id);
    },
        child: Text(
          'Избранное'
        ),
            )],
          title: Text(
            'BLoC Recipe Search App'
          )
        ),
        body:
        BlocWidgets()

    );
  }
}
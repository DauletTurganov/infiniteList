import 'package:flutter/material.dart';
import 'bloc_widgets.dart';

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
          ],
        ),
        body:
        BlocWidgets()

    );
  }
}
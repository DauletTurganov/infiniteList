import 'package:aman_test/post_bloc.dart';
import 'package:aman_test/postsList.dart';
import 'package:aman_test/repositories/post_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'favorites.dart';
import 'main_page.dart';
import 'bloc_widgets.dart';

import 'bloc.dart';
// import 'actionEvent.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // final _bloc = ActionBloc();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PostBloc _postBloc = PostBloc(
      repository: ApiRepositoryImplementation());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: MainPage.id,
      routes: {
        MainPage.id: (context) =>
            BlocProvider.value(value: _postBloc,
              child: MainPage(),),

        FavoritesScreen.id: (_) => BlocProvider.value(value: _postBloc,
    child: FavoritesScreen(),)
            // BlocProvider.value(value: _postBloc,
            //   child: FavoritesScreen(),
            // )
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _postBloc.close();
    super.dispose();
  }
}


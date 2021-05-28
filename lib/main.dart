import 'package:aman_test/bloc/favorites_bloc/favorites_bloc.dart';
import 'package:aman_test/bloc/post/post_bloc.dart';
import 'package:aman_test/repositories/post_repository.dart';
import 'package:aman_test/showInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'favorites.dart';
import 'main_page.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // final _bloc = ActionBloc();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FavoritesBloc _favoritesBloc = FavoritesBloc();
  final PostBloc _postBloc = PostBloc(
      repository: ApiRepositoryImplementation());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostBloc>(create: (context) => _postBloc),
        BlocProvider<FavoritesBloc>(create: (context) => _favoritesBloc)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: MainPage.id,
        routes: {
          MainPage.id: (context) => MainPage(),
          ShowInfo.id: (context) => ShowInfo(),
          FavoritesScreen.id: (_) => FavoritesScreen(),
              // BlocProvider.value(value: _postBloc,
              //   child: FavoritesScreen(),
              // )
        },
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _postBloc.close();
    super.dispose();
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/favorites_bloc/favorites_bloc.dart';

class FavoritesScreen extends StatefulWidget {
  static String id = 'favorites_screen';
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {

  // PostBloc _postBloc = PostBloc(repository: ApiRepositoryImplementation());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(
          'SecondPage favourites'
        ),
      ),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {

          if (state is Favorites) {
            // print('favourites screen ${state.data}');
            // print('favourites screen ${state.favourites[0].recipe.label}');
            if (state.favourites != null) {
              return ListView.builder(
                  itemCount: state.favourites.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return Container(
                      width: 400,
                      height: 500,
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed:
                                () {
                              BlocProvider.of<FavoritesBloc>(context).add(
                                  RemoveFromFavourites(
                                      hits: state.favourites[i]));
                            }
                                , child: Text(
                                    'remove from favourites'
                                )),

                            Text(state.favourites[i].recipe.label),
                            Expanded(child: Image.network(
                                state.favourites[i].recipe.image))
                          ],
                        ),
                      ),
                    );
                  });
            }
            // } else {
            //   return Container(
            //     child: Column(
            //       children: [
            //         Text(
            //           'Вы ничего не добавили в избранное'
            //         )
            //       ],
            //     ),
            //   );
            // }


          }
          return CircularProgressIndicator();

        },
      ),


      );

  }
}

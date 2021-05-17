import 'package:aman_test/post_bloc.dart';
import 'package:aman_test/repositories/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BlocBuilder<PostBloc, PostStates>(
        builder: (context, state) {
          if (state is FavouritesLoading) {
            return CircularProgressIndicator();
          }
         else  if (state is ApiLoaded) {
            // print('favourites screen ${state.data}');
            // print('favourites screen ${state.favourites[0].recipe.label}');
            for (var i = 0; i < state.favourites.length; i++)
              {
                print(
                  'favourites screen ${state.favourites[i].recipe.label}'
                );
              }
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
                              BlocProvider.of<PostBloc>(context).add(RemoveFromFavourites(hits: state.favourites[i]));
                            }
                                , child: Text(
                              'remove from favourites'
                            )),

                            Text(state.favourites[i].recipe.label),
                            Expanded(child: Image.network(state.favourites[i].recipe.image))
                          ],
                        ),
                      ),
                    );
                  });

            }


          }
          return CircularProgressIndicator();

        },
      ),


      );

  }
}

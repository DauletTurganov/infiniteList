import 'package:aman_test/bloc/post/post_bloc.dart';
import 'package:aman_test/showInfo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aman_test/bloc/favorites_bloc/favorites_bloc.dart';
import 'package:aman_test/showInfo.dart';



class RecipeItem extends StatelessWidget {
  const RecipeItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostStates>(
        builder: (context, state) {
          if (state is ApiLoading) {
            return CircularProgressIndicator();
          }
          else if (state is ApiLoaded) {
            // print('ApiLoaded and state is ${state.data}');
            // print('ApiLoaded and state is ${state.data.runtimeType}');
            // print('ApiLoaded and state is ${state.data.count}');

            if (state.data != null) {
              return Expanded(
                child: ListView.builder(
                  // controller: _scrollController,
                    shrinkWrap: true,
                    itemCount: state.data.hits.length,
                    itemBuilder: (context, item) {
                      return Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xfffff5b7),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                                children: [
                                  Text(
                                    // state.data.[item]
                                      '${state.data.hits[item].recipe.label}',
                                    style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Container(
                                      child: Image.network(
                                          state.data.hits[item].recipe.image)
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(onPressed: () {
                                        showModalBottomSheet(context: context, builder:
                                        (context) => ShowInfo());
                                      }, child: Text(
                                          'Ингредиенты'
                                      )),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      // BlocBuilder<FavoritesBloc, FavoritesState>(builder: (context, stateFavor) {
                                           ElevatedButton(
                                            onPressed: () {
                                              // print(state.data.hits[item].recipe.label);
                                              // print(state.runtimeType);
                                              BlocProvider.of<FavoritesBloc>(context).add(AddPostToLiked(hits: state.data.hits[item]));
                                              // print(state.runtimeType);
                                            },
                                            child: Text(
                                                'В избранное'
                                            )
                                        // );
                                      // }
                                      )

                                    ],
                                  )

                                ]),
                          ),
                        ),

                      );
                    }
                ),
              );
            }

          }
          else if (state is ApiFailure) {
            return Text(
                " ${state.message}"
            );
          }
          return Container();
          // print(state.data);

          //   child: ListView.builder(
          //       shrinkWrap: true,
          //       itemBuilder: (context, items) {
          //
          //         return Text(
          //             // state.data.toString()
          //           '123'
          //         );
          //       })

        }


    );
  }
}
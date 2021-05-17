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


class BlocWidgets extends StatefulWidget {
  const BlocWidgets({
    Key key,
  }) : super(key: key);

  @override
  _BlocWidgetsState createState() => _BlocWidgetsState();
}

class _BlocWidgetsState extends State<BlocWidgets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed(FavoritesScreen.id);
          },
          child: Text('Избранное'),),
        ElevatedButton(
            onPressed: () {
              BlocProvider.of<PostBloc>(context, listen: false).add(
                  FetchPosts());
            },
            child: Text(
                'pressme'
            )),
        BlocBuilder<PostBloc, PostStates>(
            builder: (context, state) {
              if (state is ApiLoading) {
                return CircularProgressIndicator();
              }
              else if (state is ApiLoaded) {
                // print('ApiLoaded and state is ${state.data}');
                print('ApiLoaded and state is ${state.data.runtimeType}');
                // print('ApiLoaded and state is ${state.data.count}');


                return Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.data.hits.length,
                      itemBuilder: (context, item) {
                        return Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                              children: [
                                Text(
                                  // state.data.[item]
                                    '${state.data.hits[item].recipe.label}'
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                    child: Image.network(
                                        state.data.hits[item].recipe.image)
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      print(state.data.hits[item].recipe.label);
                                      BlocProvider.of<PostBloc>(context).add(AddPostToLiked(hits: state.data.hits[item]));

                                      // BlocProvider
                                      //     .of<PostBloc>(context)
                                      //     .item
                                      //     .add(state.data.hits[item]);
                                      // print(BlocProvider
                                      //     .of<PostBloc>(context)
                                      //     .item);
                                      //     AddPostToLiked().items.add(item);

                                    //   print('ADDITEMS IS + ${
                                    //       AddPostToLiked().items}');
                                    },
                                    child: Text(
                                        'В избранное'
                                    )
                                )
                              ]),

                        );
                      }
                  ),
                );
              }
              else if (state is ApiFailure) {
                return Text(
                    " ${state.message}"
                );
              }
              // print(state.data);

              return Container(
                child: Text(
                    'henlo'
                ),
                //   child: ListView.builder(
                //       shrinkWrap: true,
                //       itemBuilder: (context, items) {
                //
                //         return Text(
                //             // state.data.toString()
                //           '123'
                //         );
                //       })
              );
            }


        )
      ],
    );
  }
}
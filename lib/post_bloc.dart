import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:equatable/equatable.dart';
import 'dart:convert';
import 'package:rxdart/rxdart.dart';
import 'repositories/post_repository.dart';

import 'package:bloc/bloc.dart';
import 'apiResponseModel.dart';

part 'actionEvent.dart';
part 'action_state.dart';

const _postLimit = 1;

class PostBloc extends Bloc<PostEvent, PostStates> {



  ApiRepositoryImplementation repository;
  PostBloc({@required this.repository}) : super(null);


  @override
   ApiLoaded get initialState => ApiLoaded.initialState();

  @override
  Stream<PostStates> mapEventToState(PostEvent event) async*{
    // TODO: implement mapEventToState
    if (event is FetchPosts) {
              yield ApiLoading();
              try{
               GitHubRespone responses = await repository.getData();

                yield ApiLoaded(data: responses);

              } catch (e) {
                yield ApiFailure(message: e.toString());
              }

    } else if (event is AddPostToLiked) {
         yield* _addToFavourites(event);
    } else if (event is RemoveFromFavourites) {
      yield* _removeFromFavourites(event);
    }

    }

  Stream<PostStates> _addToFavourites(AddPostToLiked event) async*{

    if (state is ApiLoaded) {
      final  current = (state as ApiLoaded);
      final currentHits = event.hits;
       List<Hits> updatedFavorites = current.favourites;

      print(updatedFavorites);
      if (updatedFavorites == null) {
        updatedFavorites = [];
        updatedFavorites.add(currentHits);
        yield ApiLoaded(data: current.data).copyWith(
            favourites: updatedFavorites
        );
      } else {
        updatedFavorites.add(currentHits);
        yield ApiLoaded(data: current.data).copyWith(
            favourites: updatedFavorites
        );
      }
    }

  }
  Stream<PostStates> _removeFromFavourites(RemoveFromFavourites event) async*{

    if (state is ApiLoaded) {
      final currentState = (state as ApiLoaded);
      final currentHit = event.hits;
      List<Hits> currentFavourites = currentState.favourites;
      currentFavourites.removeWhere((element) => element == currentHit);
      // currentFavourites.removeAt(currentFavourites.indexOf(currentHit));
      yield ApiLoaded(data: currentState.data).copyWith(
        favourites: currentFavourites
      );
    }
  }

}


  


  //
  // @override
  // Stream<PostStates> mapEventToState(PostEvent event) async*{
  //   // TODO: implement mapEventToState
  //   if (event is FetchPosts) {
  //         print('mapEventToState Executed');
  //
  //         yield await _futureFetchedToState(state);
  //         print('mapEventToState Finished!');
  //         print('The state is + $state');
  //     }
  //
  //
  // }
  //
  //   Future<PostStates> _futureFetchedToState(PostStates state) async{
  //     print('_futureFetchedToState Executed');
  //     final  List<GitHubRespone> posts = await _getData();
  //     print('_futureFetchedToState Finished');
  //     return  state.copyWith(data: posts);
  //
  //   }
  //
  //
  //   Future <List<GitHubRespone>> _getData() async {
  //     print('_getData Executed');
  //   http.Response response = await http.get(
  //       Uri.https('api.github.com', '/repos/octocat/hello-world'));
  //   // print(response.body);
  //     print('_getData Finished');
  //   var decodedData = jsonDecode(response.body);
  //   var apiStream = GitHubRespone.fromJson(decodedData);
  //   print(decodedData);
  //   items.add(apiStream);
  //   print(items);
  //
  //   return items;
  // }
  //


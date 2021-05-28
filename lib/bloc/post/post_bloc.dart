

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import '../../repositories/post_repository.dart';
import '../../apiResponseModel.dart';

part 'actionEvent.dart';
part 'action_state.dart';

const _postLimit = 10;

class PostBloc extends Bloc<PostEvent, PostStates> {


  ApiRepositoryImplementation repository;

  PostBloc({@required this.repository}) : super(StateInitial());


  // @override
  //  ApiLoaded get initialState => ApiLoaded.initialState();

  @override
  Stream<PostStates> mapEventToState(PostEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchPosts) {
      yield ApiLoading();
      print('123');
      try {
        GitHubRespone responses = await repository.getData(
            event.recipe, 0, _postLimit);
        print('4556');
        print(state.toString());

        yield  ApiLoaded(data: responses);

       
        // yield* _getDataEventToState(event);


      } catch (e) {
        // yield ApiFailure(message: e.toString());
        throw e;
      }
    }
  }
  //Todo realizovat infinite list
  // Future<PostStates> _mapGet(PostStates state) async{
  //
  //
  //   Future<GitHubRespone> _fetchData(FetchPosts event) async{
  //     try{
  //       GitHubRespone responses = await repository.getData(
  //           event.recipe, 0, _postLimit);
  //       print('4556');
  //       print(state.toString());
  //       return responses;
  //     } catch (e) {
  //       throw e;
  //     }
  //   }
  //
  // }

  //
  // Future<PostStates> _mapGet(ApiLoaded state) async {
  //   // if (state.hasReachedMax == true) return state;
  //
  //   if (state.items == null) {
  //     List<GitHubRespone> item = [];
  //     item.add(state.data);
  //     print(" as null $state");
  //     return state;
  //     // copyWith(
  //     //     data: state.data,
  //     //     // items: item
  //     // );
  //   } else {
  //     List<GitHubRespone> item = List.from(state.items);
  //     item.add(state.data);
  //     print(" asd not null${state.items.length}");
  //     return state;
  //     //     .copyWith(
  //     //     data: state.data,
  //     //     // items: item
  //     // );
  //   }

  //   print(state.data);
  //   print(state.items);
  //   return state;
  // }
      // } else if (event is AddPostToLiked) {
      //      yield* _addToFavourites(event);
      // } else if (event is RemoveFromFavourites) {
      //   yield* _removeFromFavourites(event);
      // }

    // }

    // Stream<PostStates> _getDataEventToState(FetchPosts event) async*{
    //   GitHubRespone responses = await repository.getData(event.recipe);
    //   // final apiLoadedCurrent = (state as ApiLoaded);
    //
    //   if (state is ApiLoading) {
    //     yield ApiLoaded().copyWith(
    //       data: responses,
    //     );
    //   }

    // Stream<PostStates> _getFavorites(PostStates state ) async*{
    //
    //   final apiLoaded = (state as ApiLoaded);
    //   List<Hits>currentFavor = List.from(apiLoaded.favourites);
    //   yield ApiLoaded(data: apiLoaded.data).copyWith(
    //     favourites: currentFavor
    //   );
    // }


    // List<Hits> curentFavourites = current.favourites;
    // print(curentFavourites);
    // if (curentFavourites != null) {
    //   print('APiLoadedFavorites not null');
    //   yield ApiLoaded(data: responses).copyWith(
    //     favourites: curentFavourites
    //   );
    // } else {
    //   yield ApiLoaded(data: responses);
    //   print('APiLoadedFavorites null');
    // }

    // if ((state as ApiLoaded).favourites != null ) {
    //   List<Hits> currentFavourites = List.from((state as ApiLoaded).favourites);
    //   yield ApiLoaded(data: responses).copyWith(
    //     favourites: currentFavourites
    //   );
    // } else {
    //   yield ApiLoaded(data: responses);
    // }


    // }

    // Stream<List<Hits>> _getFavourites(ApiLoaded state) async*{
    //   final current = (state as ApiLoaded);
    //   List<Hits> currentFavourites = List.from(current.favourites);
    //   yield currentFavourites;
    // }

    // Stream<PostStates> _addToFavourites(AddPostToLiked event) async*{
    //
    //   if (state is ApiLoaded) {
    //     final  current = (state as ApiLoaded);
    //     final currentHits = event.hits;
    //      List<Hits> updatedFavorites = current.favourites;
    //
    //
    //
    //     if (updatedFavorites == null) {
    //       updatedFavorites = [];
    //       updatedFavorites.add(currentHits);
    //       print('Apilodaded current favoritres is when null ${ApiLoaded(data: current.data, favourites: current.favourites).favourites}');
    //       yield ApiLoaded(data: current.data).copyWith(
    //           favourites: updatedFavorites
    //       );
    //     } else {
    //       updatedFavorites.add(currentHits);
    //       // print(updatedFavorites);
    //       print('Apilodaded current favoritres is ${ApiLoaded(data: current.data, favourites: (state as ApiLoaded).favourites)}');
    //       yield ApiLoaded(data: current.data).copyWith(
    //           favourites: updatedFavorites
    //       );
    //     }
    //   }
    //
    // }
    // Stream<PostStates> _removeFromFavourites(RemoveFromFavourites event) async*{
    //
    //   if (state is ApiLoaded) {
    //     final currentState = (state as ApiLoaded);
    //     final currentHit = event.hits;
    //     List<Hits> currentFavourites = List.from(currentState.favourites);
    //     currentFavourites.removeWhere((element) => element == currentHit);
    //     // currentFavourites.removeAt(currentFavourites.indexOf(currentHit));
    //     yield ApiLoaded(data: currentState.data).copyWith(
    //       favourites: currentFavourites
    //     );
    //   }
    // }
    //
    //
    //
  // }


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

}
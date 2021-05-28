import 'dart:async';
import 'package:aman_test/apiResponseModel.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(Favorites());


  @override
  Stream<FavoritesState> mapEventToState(
    FavoritesEvent event,
  ) async* {
    if (event is AddPostToLiked) {
      yield* _addtoFavourites(event);
    } else if (event is RemoveFromFavourites) {
      yield* _removeFromFavourites(event);
    }
    // TODO: implement mapEventToState
  }

  Stream<FavoritesState> _addtoFavourites(AddPostToLiked event) async*{
    final currentState = (state as Favorites);
    List<Hits> currentFavors = currentState.favourites;
    if (currentFavors == null) {
      List<Hits> currentFavors = [];
      currentFavors.add(event.hits);
      // print('currentfavors when null ${currentFavors.length}');
      yield Favorites(favourites: currentFavors);
    } else if (currentFavors != null) {
      List<Hits> newCurrentFavors = List.from(currentState.favourites);
      if (newCurrentFavors.contains(event.hits)) {
        yield Favorites(favourites: newCurrentFavors);
      } else {
        currentFavors.add(event.hits);
        // print('currentfavors ${currentFavors.length}');
        Favorites(favourites: newCurrentFavors);
      }
    }
  }
  Stream<FavoritesState> _removeFromFavourites(RemoveFromFavourites event) async* {
    final currentState = (state as Favorites);
    List<Hits> currentFavors = List.from(currentState.favourites);
    currentFavors.removeWhere((element) => element == event.hits);
    yield Favorites(favourites: currentFavors);
  }

}

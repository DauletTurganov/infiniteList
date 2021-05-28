part of 'favorites_bloc.dart';

abstract class FavoritesEvent extends Equatable {
  const FavoritesEvent();
}

class AddPostToLiked extends FavoritesEvent {
  final Hits hits;

  AddPostToLiked({this.hits});

  @override
  List<Object> get props => [hits];
}

class RemoveFromFavourites extends FavoritesEvent{
  final Hits hits;
  RemoveFromFavourites({this.hits});

  @override
  List<Object> get props => [hits];
}


part of 'post_bloc.dart';


abstract class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchPosts extends PostEvent {}

class AddPostToLiked extends PostEvent {
  final Hits hits;

  AddPostToLiked({@required this.hits});

  @override
  List<Object> get props => [hits];
}

class RemoveFromFavourites extends PostEvent{
  final Hits hits;
  RemoveFromFavourites({@required this.hits});

  @override
  List<Object> get props => [hits];

}
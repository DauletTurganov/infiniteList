
part of 'post_bloc.dart';


abstract class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchPosts extends PostEvent  {
  final String recipe;
  final int from;
  final int to;
  FetchPosts({@required this.recipe, this.from, this.to});

  @override
  List<Object> get props => [recipe];
}

class SearchFieldUpdated extends PostEvent {
  final String recipeString;
  SearchFieldUpdated({@required this.recipeString});

  @override
  List<Object> get props => [recipeString];
}





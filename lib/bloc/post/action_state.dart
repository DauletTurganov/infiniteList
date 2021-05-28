

part of 'post_bloc.dart';


abstract class PostStates extends Equatable{


}

// enum PostStatus { initial, success, failure }

class StateInitial extends PostStates{
  final GitHubRespone data;
  final String currentSearchItem;
  final List<GitHubRespone> items;
  final bool hasReachedMax;
  // List<Hits> favourites = [];


  StateInitial({ this.data, this.items, this.currentSearchItem, this.hasReachedMax});
  @override
  // TODO: implement props
  List<Object> get props => [];

}


class ApiLoaded extends PostStates{

  final GitHubRespone data;

  final List<GitHubRespone> items;
  final bool hasReachedMax;
  // List<Hits> favourites = [];


  ApiLoaded({ this.data, this.items, this.hasReachedMax});

  // static ApiLoaded initialState() => ApiLoaded(data: null, items: [],favourites: [], currentSearchItem: null);

  ApiLoaded copyWith({
  GitHubRespone data,
    List<GitHubRespone> items,
    // List<Hits> favourites
}) {
    return ApiLoaded(data: data ?? this.data,
    items: items ?? this.items,
    hasReachedMax: hasReachedMax ?? this.hasReachedMax
    // favourites: favourites ?? this.favourites
    );
  }

  @override
  // TODO: implement props
  List<Object> get props => [data, hasReachedMax];

}

class FavouritesLoading extends PostStates{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}


class ApiInitial extends PostStates{
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class ApiLoading extends PostStates{
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class ApiFailure extends PostStates{

  final String message;

  ApiFailure({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class NotLoaded extends PostStates with EquatableMixin{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class AddedToFavorites extends PostStates{

  final GitHubRespone items;

  final List hits;

  AddedToFavorites({@required this.hits, this.items});

  @override
  // TODO: implement props
  List<Object> get props => [hits];

}




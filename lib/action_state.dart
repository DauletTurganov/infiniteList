

part of 'post_bloc.dart';


abstract class PostStates extends Equatable{

}

enum PostStatus { initial, success, failure }



class ApiLoaded extends PostStates{

  final GitHubRespone data;
  final List items;
  List<Hits> favourites = [];


  ApiLoaded({@required this.data, this.items, this.favourites});

  static ApiLoaded initialState() => ApiLoaded(data: null, items: [],favourites: []);

  ApiLoaded copyWith({
  GitHubRespone data,
    List items,
    List<Hits> favourites
}) {
    return ApiLoaded(data: data ?? this.data,
    items: items ?? this.items,
    favourites: favourites ?? this.favourites);
  }

  @override
  // TODO: implement props
  List<Object> get props => [data, favourites];

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

  String message;

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

  List hits = [];

  AddedToFavorites({@required this.hits, this.items});

  @override
  // TODO: implement props
  List<Object> get props => [hits];

}




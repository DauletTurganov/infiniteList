
part of 'favorites_bloc.dart';


abstract class FavoritesState extends Equatable {
  const FavoritesState();
}

class FavoritesInitial extends FavoritesState {
  @override
  List<Object> get props => [];
}

class Favorites extends FavoritesState {
  final List<Hits> favourites;

  Favorites({this.favourites});

  Favorites copyWith({
  List<Hits> favourites
}) {
    return Favorites(
      favourites: favourites ?? this.favourites
    );
  }

  @override
  // TODO: implement props
  List<Object> get props => [favourites];

}
//
// class FavoritesAdded extends FavoritesState {
//   Hits favorites;
//   FavoritesAdded({this.favorites});
//
//   @override
//   // TODO: implement props
//   List<Object> get props => [favorites];
//
// }


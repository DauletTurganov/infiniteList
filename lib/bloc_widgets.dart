import 'package:aman_test/bloc/post/post_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/recipe_item.dart';


class BlocWidgets extends StatefulWidget {
  const BlocWidgets({
    Key key,
  }) : super(key: key);

  @override
  _BlocWidgetsState createState() => _BlocWidgetsState();
}

class _BlocWidgetsState extends State<BlocWidgets> {
  String _textFieldValue;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(onScroll);
  }

  void onScroll() {
    if (isBottom) {
      print('vi doshli do niza');
      BlocProvider.of<PostBloc>(context).add(FetchPosts(recipe: _textFieldValue, from: 10, to: 20));
    }
  }

  bool get isBottom {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Введите название ингредиента',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0),),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            ),
            onChanged: (value) {
              _textFieldValue = value;
            },
          ),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<PostBloc>(context, listen: false).add(
                    FetchPosts(recipe: _textFieldValue, from: 0, to: 10));
              },
              child: Text(
                  'Поиск'
              )),
          Divider(
            color: Colors.black,
            height: 2.0,
          ),
          RecipeItem()
        ],
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }
}


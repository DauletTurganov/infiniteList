//
// import 'dart:async';
// import 'package:aman_test/action_state.dart';
// import 'package:aman_test/apiResponseModel.dart';
//
//
// import 'actionEvent.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:json_serializable/json_serializable.dart';
// import 'package:bloc/bloc.dart';
// import 'apiResponseModel.dart';
// import 'package:equatable/equatable.dart';
//
//
//
//
// class ActionBloc extends Bloc<ActionEvent, ActionState>{
//   ActionBloc(ActionState initialState) : super(initialState);
//
//   List dataList;
//
//
//   Future <http.Response> getData() async{
//               print('23');
//               http.Response response = await http.get(Uri.https('api.github.com', '/repos/octocat/hello-world' ,));
//               print('3');
//               print(response.statusCode);
//               // print(response.body);
//               var decodedData = jsonDecode(response.body);
//               Autogenerated data = Autogenerated.fromJson(decodedData);
//               dataList.add(data);
//             }
//
//   @override
//   Stream<ActionState> mapEventToState(
//       ActionEvent event) async*{
//     if (event is ButtonOnClickEvent) {
//        yield ;
//     } else if (event is ButtonFavoritesListEvent) {
//
//     }
//     // TODO: implement mapEventToState
//     throw UnimplementedError();
//   }
//   // final _dataStateController = StreamController<Map<String, dynamic>>();
//   // StreamSink <Map<String, dynamic>> get _inData => _dataStateController.sink;
//   // Stream <Map<String, dynamic>> get data => _dataStateController.stream;
//   //
//   // final _dataEventController = StreamController<ButtonOnClickEvent>();
//   // Sink<ActionEvent> get dataEventSink => _dataEventController.sink;
//   //
//   // ActionBloc() {
//   //
//   //   _dataEventController.stream.listen(_mapEventToStream);
//   //
//   //   }
//   //    void _mapEventToStream(ActionEvent event) {
//   //       if (event is ButtonOnClickEvent) {
//   //
//   //         print('123');
//   //
//   //         Future <http.Response> getData() async{
//   //           print('23');
//   //           http.Response response = await http.get(Uri.https('api.github.com', '/repos/octocat/hello-world' ,));
//   //           print('3');
//   //           print(response.statusCode);
//   //           // print(response.body);
//   //           _data = jsonDecode(response.body);
//   //           print(_data);
//   //           _inData.add(_data);
//   //         }
//   //         getData();
//   //
//   //       }
//   //
//   // }
//   // void dispose() {
//   //   _dataStateController.close();
//   //   _dataEventController.close();
//   // }
//   //
//   // @override
//   // Stream<ActionState> mapEventToState(ActionEvent event) {
//   //   // TODO: implement mapEventToState
//   //   throw UnimplementedError();
//   // }
//
//
// }
//
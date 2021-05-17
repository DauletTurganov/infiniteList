import 'package:aman_test/apiResponseModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


abstract class ApiRepositoryInterface {
  Future <GitHubRespone> getData();
}

class ApiRepositoryImplementation implements ApiRepositoryInterface{

  static const _APP_ID = 'd5fd1cb9';
  static const _APP_KEY = 'd4be5788cb0ab6aa1249764f362b8fb9';


  String _searchItems;




  int _from = 0;
  int _to = 10;


  @override
  Future <GitHubRespone> getData() async {


    http.Response response = await http.get(
        // Uri.https('api.github.com', '/repos/octocat/hello-world'));
        Uri.https('api.edamam.com', '/search',
            {
              'q': 'chicken',
              'app_id': _APP_ID,
              'app_key': _APP_KEY,
              'from': _from.toString(),
              'to': _to.toString(),
            }));
    // print(response.body);
    if (response.statusCode == 200) {

      var decodedData = jsonDecode(response.body);
      GitHubRespone apiStream = GitHubRespone.fromJson(decodedData);


      print(decodedData);
      print('Api stream are + $apiStream');

      return apiStream;
    } else {
      print('Error');
      throw Exception();
    }

  }
}

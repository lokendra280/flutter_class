import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsing extends StatefulWidget {
  const JsonParsing({Key? key}) : super(key: key);

  @override
  State<JsonParsing> createState() => _JsonParsingState();
}

class _JsonParsingState extends State<JsonParsing> {
  Future data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing Json"),
      ),
    );
  }
}

class Network {
  final String url;

  Network(this.url);
  Future fetchData() async {
    print("$url");
    Response response = await get(Uri.encodeFull(url));

    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      print(response.statusCode);
    }
  }
}

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey.shade100,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1.0)]),
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    // size: 25.0,
                  ),
                  hintText: 'Search for projects, events,labels',
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                  border: InputBorder.none),
              cursorColor: Colors.grey,
            )),
      ),
    );
  }
}

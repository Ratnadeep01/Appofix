import 'package:flutter/material.dart';

class Data_search extends SearchDelegate<String> {


  String searchFieldLabel = 'Search your Symptoms, Doctors, Clinics';

  ThemeData appBarTheme(BuildContext context) {

    return ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 17,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            fontSize: 18
        ),
        border: InputBorder.none,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.grey[800],
        selectionColor: Colors.green,
      ),
    );
  }


  @override
  List<Widget>? buildActions(BuildContext context) {
    //searchFieldLabel;
    // TODO: implement buildActions
    return [
      query.isNotEmpty?
      IconButton(onPressed: (){
          query = "";
      }, icon: Icon(Icons.clear, color: Colors.grey[800],),
        splashRadius: 20,) :
          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_voice, color: Colors.black,))
    ];
  }


  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: (){
      Navigator.pop(context, "/Home");
    }, icon: Icon(Icons.arrow_back, color: Colors.grey[800],),
      splashRadius: 20,);
  }





  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }




  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container(
    );
  }
}

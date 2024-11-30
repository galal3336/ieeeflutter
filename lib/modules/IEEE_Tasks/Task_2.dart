// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, use_key_in_widget_constructors, file_names, unused_import, sort_child_properties_last,prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable,non_constant_identifier_names, unnecessary_string_interpolations, sort_child_properties_last, duplicate_ignore, unnecessary_string_escapes, camel_case_types, empty_catches, body_might_complete_normally_catch_error, unused_local_variable, unused_label, avoid_types_as_parameter_names, unrelated_type_equality_checks, prefer_is_empty, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, unused_element
import 'package:flutter/material.dart';

int x = 0;

class IEEE2 extends StatelessWidget {
  const IEEE2({super.key});

  @override
  Widget build(BuildContext context) {
    x = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 132, 28, 171),
        title: Text(
          "List Tile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
          ),
        ),
        centerTitle: true,
      ),
      body: with_scroll(),
    );
  }
}

Widget gz({int? Index}) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Color.fromARGB(255, 132, 28, 171),
      child: Text(
        "${Index ?? x}",
        style: TextStyle(
          color: Colors.white70,
          fontSize: 17,
        ),
      ),
      radius: 20,
    ),
    title: Text(
      "Item ${Index ?? x++}",
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    ),
    subtitle: Text(
      "Item description",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
    ),
    trailing: Icon(Icons.more_vert),
  );
}

// single child scroll view
Widget with_scroll() {
  return SingleChildScrollView(
    child: Column(
      children: [
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
        gz(),
      ],
    ),
  );
}

//  with list view
Widget with_list_view() {
  return ListView.builder(
    // here if you didn't send the index a logic error appear
    itemBuilder: (context, index) => gz(Index: index),
    itemCount: 18,
  );
}

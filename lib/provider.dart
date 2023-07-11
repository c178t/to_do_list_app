

import 'package:flutter/material.dart';

class ToDoListProvider extends ChangeNotifier {

 List<Map<String, dynamic>> toDoItems = [
    {
      "time" : "8:00",
      "name" : "Go to Church",
      "timeType" : "AM",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "12:00",
      "name" : "Cook for the family",
      "timeType" : "PM",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "2:00",
      "name" : "Wash my clothes",
      "timeType" : "PM",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "5:00",
      "name" : "Visit Chastity",
      "timeType" : "PM",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "6:00",
      "name" : "Make my hair",
      "timeType" : "PM",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "8:00",
      "name" : "Call my brother",
      "timeType" : "PM",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "12:00",
      "name" : "Play videogames",
      "timeType" : "AM",
      "isChecked" : false,
      "isBool" : false
    }
  ];

  ToDoListProvider();

  void addItem(BuildContext context) {

    showModalBottomSheet(
      context:  context, 
      builder: (context) {
       return Container();
      },
    );

  }

  void deleteItem() {

  }

  void notify() {
    notifyListeners();
  }

}
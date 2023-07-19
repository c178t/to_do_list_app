import 'package:flutter/material.dart';

class ToDoListProvider extends ChangeNotifier {

  int itemCount = 7; 

 

 final List<Map<String, dynamic>> toDoItems = [
    {
      "time" : "8:00 AM",
      "name" : "Go to Church",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "12:00 PM",
      "name" : "Cook for the family",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "2:00 PM",
      "name" : "Wash my clothes",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "5:00 PM",
      "name" : "Visit Chastity",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "6:00 PM",
      "name" : "Make my hair",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "8:00 PM",
      "name" : "Call my brother",
      "isChecked" : false,
      "isBool" : false
    },

    {
      "time" : "12:00 AM",
      "name" : "Play videogames",
      "isChecked" : false,
      "isBool" : false
    }
  ];

  ToDoListProvider();

  void addItem() {
    
    notifyListeners();

  }

  void deleteItem(int index) {
    toDoItems.removeAt(index);
    itemCount--;
    notifyListeners();
  }

  void notify() {
    notifyListeners();
  }

}
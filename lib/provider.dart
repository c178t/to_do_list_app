

import 'package:flutter/material.dart';

class ToDoListProvider extends ChangeNotifier {

 int itemCount = 7;

final _textController = TextEditingController();

 final List<Map<String, dynamic>> toDoItems = [
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15)
        ) 
      ),
      context:  context, 
      builder: (context) {
       return ListView(
        
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "New Item", 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 68, 68, 68)
              ), 
              
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textController,
              cursorColor: Color.fromARGB(255, 223, 189, 67),
              decoration: const InputDecoration(
                hintText: 'To Do...',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 223, 189, 67),
                    style: BorderStyle.solid,
                    
                  )
                )
                )
              ),
          
            ),

            TimePickerDialog(
              initialEntryMode: TimePickerEntryMode.inputOnly,
              cancelText: '',
              confirmText: '',
              initialTime: TimeOfDay.fromDateTime(
                DateTime.now()
              )
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 8),
              child: ElevatedButton(
                onPressed: () {
                  toDoItems.insert(
                    0,
                    {
                      "time" : "Not Available",
                      "name" : _textController.text,
                      "timeType" : "Not Available",
                     "isChecked" : false,
                      "isBool" : false
                    }
                  );

                    itemCount++;
                 
                 Navigator.pop(context);

                 notifyListeners();
                }, 
                child: Text(
                  'Add',
            
                )
                ),
            ),




          

        ],
       );
      },
    );

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
import 'package:flutter/material.dart';

class ToDoListProvider extends ChangeNotifier {

String setTime = '';

TimeOfDay _timeOfDay = TimeOfDay.now();

bool timePressed = false;
 int itemCount = 7;

final _textController = TextEditingController();

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

  void addItem(BuildContext context) {


    showModalBottomSheet(
      backgroundColor: Color.fromARGB(255, 255, 253, 244),
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15)
        ) 
      ),
      context:  context, 
      builder: (context) {
       return SingleChildScrollView(
         child: Container(
           padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
           child: Column(
            mainAxisSize: MainAxisSize.min,
            
            children: [
                
              Row(
                children: [
                  Container(
                    width: 300,
                    child: Padding(
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
                  ),
                
                  Text(
                    setTime,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 20
                    ),
                  )
                ],
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
                
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                                        Colors.white
                                        )
                    ),
                  
                  onPressed: () {
                
                    timePressed = true;
                
                    showTimePicker(
                          initialEntryMode: TimePickerEntryMode.inputOnly,
                          context: context, 
                          initialTime: TimeOfDay.now()
                        ).then((value) {
                          
                          _timeOfDay = value!;
                        });
                  }, 
                  child: Text(
                    "Add Custom Time",
                    style: TextStyle(
                      color: Color.fromARGB(255, 68, 68, 68)
                    ),
                  )
                  ),
                ),
                
                SizedBox(
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,32),
                    child: ElevatedButton(
                      onPressed: () {
                              
                        if (_textController.text == '') {
                          showDialog(
                            context: context, 
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              title: Text('Name of item cannot be empty'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context), 
                                  child: Text('OK')
                                  )
                              ],
                              
                            ),
                          );
                        } else {
                            toDoItems.insert(
                            0,
                            {
                              "time" : timePressed? _timeOfDay.format(context).toString(): '',
                              "name" : _textController.text,
                            "isChecked" : false,
                              "isBool" : false
                            }
                          );
                                
                        if (timePressed) {
                          setTime = _timeOfDay.format(context).toString();
                        }


                        itemCount++;
                        
                        timePressed = false;
                  
                        _timeOfDay = TimeOfDay.now();
                  
                        _textController.clear(); 
                        
                        Navigator.pop(context);
                        }
                              
                        
                              
                       notifyListeners();
                      }, 
                      child: Icon(
                        
                        Icons.done
                      ),
                      style: ButtonStyle(
                        
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 223, 189, 67))
                      ),
                      ),
                  ),
                ),
               
                
            ],
           ),
         ),
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
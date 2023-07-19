import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_list_app/calendar.dart';
import 'package:to_do_list_app/group.dart';
import 'package:to_do_list_app/home.dart';
import 'package:to_do_list_app/notification.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ToDoListProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyApp(),
      )
    ),
    
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String setTime = '';

  TimeOfDay _timeOfDay = TimeOfDay.now();

  bool timePressed = false;
  

  final _textController = TextEditingController();

  int pageIndex = 0;
  final pages = [HomePage(), CalendarPage(), NotiPage(), GroupPage()];


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(child: pages[pageIndex]),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          bottomNavigationBar: 
            BottomNavigationBar(
              onTap: (index) => setState(() {
                pageIndex = index;
              }),
              currentIndex: pageIndex,
              backgroundColor: Color.fromARGB(255, 237, 234, 234),
              items: [
                BottomNavigationBarItem(
                  icon: Padding(padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                  child: Icon(Icons.home, 
                  color: Color.fromARGB(255, 68, 68, 68),
                  size: 30,),
                  ),
                  label: '',
                  ),
    
                BottomNavigationBarItem(
                  icon: Padding(padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                  child: Icon(Icons.calendar_today_outlined, 
                  color: Color.fromARGB(255, 68, 68, 68),
                  size: 30,),
                  ),
                  label: '',
                  ),
    
                BottomNavigationBarItem(
                  icon: Padding(padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                  child: Icon(Icons.notifications_none_outlined, 
                  color: Color.fromARGB(255, 68, 68, 68),
                  size: 30,),
                  ),
                  label: '',
                  ),
    
                BottomNavigationBarItem(
                  icon: Padding(padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                  child: Icon(Icons.grid_view_outlined, 
                  color: Color.fromARGB(255, 68, 68, 68),
                  size: 30,),
                  ),
                  label: '',
                  ),
              ], 
              type: BottomNavigationBarType.fixed,
              ),
          floatingActionButton: 
            FloatingActionButton(
              onPressed: () {

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
            return StatefulBuilder(
              builder:  (context, setState) {
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
                                  setState(() {
                                    _timeOfDay = value!;
                                    setTime = _timeOfDay.format(context).toString();
                                  });
                                  
                                  
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
                                    Provider.of<ToDoListProvider>(context, listen: false).toDoItems.insert(
                                    0,
                                    {
                                      "time" : timePressed? _timeOfDay.format(context).toString(): '',
                                      "name" : _textController.text,
                                    "isChecked" : false,
                                      "isBool" : false
                                    }
                                  );
                                        
                            
            
            
                                Provider.of<ToDoListProvider>(context, listen: false).itemCount++;
                                
                                timePressed = false;
            
                                setTime = '';
                          
                                _timeOfDay = TimeOfDay.now();
                          
                                _textController.clear();   
                                
                                Navigator.pop(context);
                                
                                Provider.of<ToDoListProvider>(context, listen: false).notify();
                                }
                                      
                                
                                      
                              
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
            },
          );

            
            
            
              },
              child: Icon(Icons.add, color: Colors.white, size: 40,),
              backgroundColor: Color.fromARGB(255, 223, 189, 67),
              elevation: 0,
    
              ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          
        ),
      ),
      designSize: const Size(428, 926),
    );
    
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 253, 244),
      body: 
        Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(26.w, 45.h, 0, 0),
            child: CircleAvatar(child: Image.asset('assets/Face.png', scale: 0.70), radius: 40.0)
            ),
            
            Padding(padding: EdgeInsets.all(14),
              child: Container(
                      child: Text('Good evening, Ivy', style: TextStyle(fontSize: 16.sp),), 
                      color: Color.fromARGB(255, 245, 242, 232),
                      padding: EdgeInsets.all(5),
              
                    )
            ),

            SizedBox(

              height: 70,
              width: 900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  
                  Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            
                            '5', 
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ), 
                            textAlign: TextAlign.center,
                          
                          ),
                        ),
                        constraints: BoxConstraints(maxHeight: 25, maxWidth: 25, minHeight: 25, minWidth: 25),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 65, 23),
                          shape: BoxShape.circle
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16.h, 0, 0),
                        child: Text(
                          'Thur', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 65, 23),
                            fontWeight: FontWeight.w400
                            ),
                        ),
                      )
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            
                            '6', 
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ), 
                            textAlign: TextAlign.center,
                          
                          ),
                        ),
                        constraints: BoxConstraints(maxHeight: 25, maxWidth: 25, minHeight: 25, minWidth: 25),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 65, 23),
                          shape: BoxShape.circle
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16.h, 0, 0),
                        child: Text(
                          'Fri', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 65, 23),
                            fontWeight: FontWeight.w400
                            ),
                        ),
                      )
                    ],
                  ),Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            
                            '7', 
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ), 
                            textAlign: TextAlign.center,
                          
                          ),
                        ),
                        constraints: BoxConstraints(maxHeight: 25, maxWidth: 25, minHeight: 25, minWidth: 25),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 65, 23),
                          shape: BoxShape.circle
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16.h, 0, 0),
                        child: Text(
                          'Sat', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 65, 23),
                            fontWeight: FontWeight.w400
                            ),
                        ),
                      )
                    ],
                  ),Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            
                            '8', 
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ), 
                            textAlign: TextAlign.center,
                          
                          ),
                        ),
                        constraints: BoxConstraints(maxHeight: 25, maxWidth: 25, minHeight: 25, minWidth: 25),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 65, 23),
                          shape: BoxShape.circle
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16.h, 0, 0),
                        child: Text(
                          'Sun', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 65, 23),
                            fontWeight: FontWeight.w400
                            ),
                        ),
                      )
                    ],
                  ),Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            
                            '9', 
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ), 
                            textAlign: TextAlign.center,
                          
                          ),
                        ),
                        constraints: BoxConstraints(maxHeight: 25, maxWidth: 25, minHeight: 25, minWidth: 25),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 65, 23),
                          shape: BoxShape.circle
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16.h, 0, 0),
                        child: Text(
                          'Mon', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 65, 23),
                            fontWeight: FontWeight.w400
                            ),
                        ),
                      )
                    ],
                  ),Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            
                            '10', 
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ), 
                            textAlign: TextAlign.center,
                          
                          ),
                        ),
                        constraints: BoxConstraints(maxHeight: 25, maxWidth: 25, minHeight: 25, minWidth: 25),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 65, 23),
                          shape: BoxShape.circle
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16.h, 0, 0),
                        child: Text(
                          'Tues', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 65, 23),
                            fontWeight: FontWeight.w400
                            ),
                        ),
                      )
                    ],
                  ),Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            
                            '11', 
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ), 
                            textAlign: TextAlign.center,
                          
                          ),
                        ),
                        constraints: BoxConstraints(maxHeight: 25, maxWidth: 25, minHeight: 25, minWidth: 25),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 77, 65, 23),
                          shape: BoxShape.circle
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 16.h, 0, 0),
                        child: Text(
                          'Wed', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 65, 23),
                            fontWeight: FontWeight.w400
                            ),
                        ),
                      )
                    ],
                  ),

                  

                ],
              ),
              ),

            Center(
              child:  TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 223, 189, 67),),
                            hintText: 'Search',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Color.fromARGB(36, 255, 255, 255))
                                    ),
                            contentPadding: EdgeInsets.all(0),
                            constraints: BoxConstraints(maxWidth: 400),
                            
                        ),

                      ),
            ),

            Padding(padding: EdgeInsets.fromLTRB(20.w, 15.h, 0, 0),
                        child: Text('Today\'s tasks', 
                        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 13.h),
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(255, 214, 214, 214), 
                            style: BorderStyle.solid,),
                        borderRadius: BorderRadius.circular(20)
                        ),
                        height: 72,
                        width: 387,
                        child: CheckboxListTile(
                          value: toDoItems[index]["isChecked"], 
                          onChanged: (value) {
                            setState(() {
                              toDoItems[index]["isChecked"] = value;
                              if(value == null) {

                              } else if(value){
                                toDoItems[index]["isBool"] = true;
                              } else if(!value){
                                toDoItems[index]["isBool"] = false;
                              }
                              
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Color.fromARGB(255, 223, 189, 67),
                          title: Text(toDoItems[index]["time"] +  " " + toDoItems[index]["timeType"], style: TextStyle(fontSize: 13.sp),),
                          subtitle: Padding(
                            padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                            child: Text(toDoItems[index]["name"], 
                              style: TextStyle(fontSize: 18.sp, decoration: toDoItems[index]["isBool"]? TextDecoration.lineThrough: null),),
                          ),
                          secondary: Wrap(
                                children: [
                                  IconButton(
                                    onPressed: null, 
                                    icon: Icon(Icons.edit_note, color: Color.fromARGB(255, 223, 189, 67))),
                          
                                  IconButton(
                                    onPressed: null, 
                                    icon: Icon(Icons.delete, color: Color.fromARGB(255, 223, 189, 67))),
                                  
                                ],
                              ),

          
                              ),
                      ),
                    ),
                  );
                }
              )

            ),

            SizedBox(
              width: 800,
              height: 20,
            )

            
             
            


            

            
          ],
        )



        
      
    );
  }
}
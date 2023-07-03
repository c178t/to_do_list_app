import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool? isChecked1 = false;
bool? isChecked2 = false;
bool? isChecked3 = false;
bool? isChecked4 = false;
bool? isChecked5 = false;
bool? isChecked6 = false;
bool isBool1 = false;
bool isBool2 = false;
bool isBool3 = false;
bool isBool4 = false;
bool isBool5 = false;
bool isBool6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 253, 244),
      body: 
        Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(26, 70, 0, 0),
            child: CircleAvatar(child: Image.asset('assets/Face.png', scale: 0.70), radius: 40.0)
            ),
            
            Padding(padding: EdgeInsets.all(14),
              child: Container(
                      child: Text('Good evening, Ivy', style: TextStyle(fontSize: 16),), 
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
                              fontSize: 13,
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
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                              fontSize: 13,
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
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                              fontSize: 13,
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
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                              fontSize: 13,
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
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                              fontSize: 13,
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
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                              fontSize: 13,
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
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                              fontSize: 13,
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
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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

            Padding(padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Text('Today\'s tasks', 
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
            ),

            Expanded(
              child: ListView(
                children: [


            
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                      value: isChecked1, 
                      onChanged: (value) {
                        setState(() {
                          isChecked1 = value;
                          if(value == null) {

                          } else if(value){
                            isBool1 = true;
                          } else if(value == false){
                            isBool1 = false;
                          }
                           
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Color.fromARGB(255, 223, 189, 67),
                      title: Text('8:00 AM', style: TextStyle(fontSize: 13),),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                        child: Text('Go to Church', 
                          style: TextStyle(fontSize: 18, decoration: isBool1? TextDecoration.lineThrough: null),),
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
              ),

            
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 13, 0, 0),
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
                      value: isChecked2, 
                      onChanged: (value) {
                        setState(() {
                          isChecked2 = value;
                          if(value == null) {

                          } else if(value){
                            isBool2 = true;
                          } else if(value == false){
                            isBool2 = false;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Color.fromARGB(255, 223, 189, 67),
                      title: Text('12:00 PM', style: TextStyle(fontSize: 13),),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                        child: Text('Cook for the family', 
                          style: TextStyle(fontSize: 18, decoration: isBool2? TextDecoration.lineThrough: null),),
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
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 13, 0, 0),
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
                      value: isChecked3, 
                      onChanged: (value) {
                        setState(() {
                          isChecked3 = value;
                          if(value == null) {

                          } else if(value){
                            isBool3 = true;
                          } else if(value == false){
                            isBool3 = false;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Color.fromARGB(255, 223, 189, 67),
                      title: Text('2:00 PM', style: TextStyle(fontSize: 13),),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                        child: Text('Wash my clothes', 
                          style: TextStyle(fontSize: 18, decoration: isBool3? TextDecoration.lineThrough: null),),
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
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 13, 0, 0),
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
                      value: isChecked4, 
                      onChanged: (value) {
                        setState(() {
                          isChecked4 = value;
                          if(value == null) {

                          } else if(value){
                            isBool4 = true;
                          } else if(value == false){
                            isBool4 = false;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Color.fromARGB(255, 223, 189, 67),
                      title: Text('5:00 PM', style: TextStyle(fontSize: 13),),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                        child: Text('Visit Chastity', 
                          style: TextStyle(fontSize: 18, decoration: isBool4? TextDecoration.lineThrough: null),),
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
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 13, 0, 0),
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
                      value: isChecked5, 
                      onChanged: (value) {
                        setState(() {
                          isChecked5 = value;
                          if(value == null) {

                          } else if(value){
                            isBool5 = true;
                          } else if(value == false){
                            isBool5 = false;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Color.fromARGB(255, 223, 189, 67),
                      title: Text('6:00 PM', style: TextStyle(fontSize: 13),),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                        child: Text('Make my hair', 
                          style: TextStyle(fontSize: 18, decoration: isBool5? TextDecoration.lineThrough: null),),
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
                ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 13, 0, 30),
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
                      value: isChecked6, 
                      onChanged: (value) {
                        setState(() {
                          isChecked6 = value;
                          if(value == null) {

                          } else if(value){
                            isBool6 = true;
                          } else if(value == false){
                            isBool6 = false;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Color.fromARGB(255, 223, 189, 67),
                      title: Text('8:00 PM', style: TextStyle(fontSize: 13),),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                        child: Text('Call my brother', 
                          style: TextStyle(fontSize: 18, decoration: isBool6? TextDecoration.lineThrough: null),),
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
              ),

              ],)
            )

            
             
            


            

            
          ],
        )



        
      
    );
  }
}
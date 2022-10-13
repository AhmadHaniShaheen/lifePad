import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class EditSpace extends StatefulWidget {
  const EditSpace({Key? key}) : super(key: key);

  @override
  State<EditSpace> createState() => _EditSpaceState();
}

class _EditSpaceState extends State<EditSpace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Container(
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Work Space Details',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff1C2760),
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 20),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xff09C2B5),
                    ),
                  ),
                  Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Work Space Name',
                            hintStyle: TextStyle(
                                color: Color(0xff9098B1), fontSize: 12),
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 20, right: 20),
                      child: Icon(
                        Icons.save,
                        color: Color(0xff1C2760),
                      ))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,),),
                  TextButton(onPressed: (){}, child: Text('Delete',style: GoogleFonts.roboto(color: Colors.red),))
                ],
              ),
              SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      ),

    );
  }
}

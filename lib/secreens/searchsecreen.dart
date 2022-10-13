import 'package:flutter/material.dart';

class SearchSecreen extends StatefulWidget {
  const SearchSecreen({Key? key}) : super(key: key);

  @override
  State<SearchSecreen> createState() => _SearchSecreenState();
}

class _SearchSecreenState extends State<SearchSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,color: Color(0xff000000),)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Search',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xff1C2760),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Divider(),
                  SizedBox(
                    height: 32,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Color(0xff9098B1),),
                      hintText: 'Search about your task',
                      hintStyle: TextStyle(color: Color(0xff636777)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE5E5E5)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE5E5E5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("images/searchil.png"),
    ),
          ),),
      ),
        )


    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SearchNoResults extends StatefulWidget {
  const SearchNoResults({Key? key}) : super(key: key);

  @override
  State<SearchNoResults> createState() => _SearchNoResultsState();
}

class _SearchNoResultsState extends State<SearchNoResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Divider(),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Color(0xff9098B1),),
                        hintText: 'Wordpress assignment',
                        hintStyle: TextStyle(color: Color(0xff636777)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE5E5E5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE5E5E5)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('0 Results',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff9098B1)),)),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Text('Opes!!',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Color(0xffF81810)),),
                SizedBox(
                  height: 16,
                ),
                Text('Task Not Found',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Color(0xff9098B1)),),
                SizedBox(
                  height: 16,
                ),
                Text('Plese Try again',style: TextStyle(fontSize: 12,color: Color(0xff9098B1)),),
                SizedBox(
                  height: 42,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, '/home');
                }, child: Text('Back To Home'),style: ElevatedButton.styleFrom(primary: Color(0xff09C2B5),minimumSize: Size(double.infinity,48)),),

              ],
            ),
          ),)

    );
  }
}

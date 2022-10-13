import 'package:flutter/material.dart';
class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                      label: Text('Search about your task'),
                      labelStyle: TextStyle(color: Color(0xff636777)),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('3 Results',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff9098B1)),),
                      Row(
                        children: [
                          Icon(Icons.sort,color: Color(0xff9098B1)),
                          SizedBox(
                            width: 24,
                          ),
                          Icon(Icons.filter_alt_outlined,color: Color(0xff9098B1),),

                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Text('Flutter Project-screen 1',style: TextStyle(color: Color(0xff9098B1),fontSize: 14,),)),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Flutter Project-screen 1',style: TextStyle(color: Color(0xff9098B1),fontSize: 14,),)),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Flutter Project-screen 1',style: TextStyle(color: Color(0xff9098B1),fontSize: 14,),)),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),

                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/searchil.png"),
              ),
            ),),
        )

    );
  }
}

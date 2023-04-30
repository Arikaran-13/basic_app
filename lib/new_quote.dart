import "package:basic_app/main.dart";
import "package:basic_app/quotes.dart";
import "package:flutter/material.dart";
import "package:basic_app/quotes.dart";
class NewQuote extends StatelessWidget{

final textController_text = TextEditingController();
final textController_author = TextEditingController();

  @override
  Widget build (BuildContext context){

    return Scaffold(
       
       appBar: AppBar(
        title: Text("Enter a New Quote"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
       ),
       body: Padding(
        padding: EdgeInsets.all(10.0),
        
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children : <Widget>[
          TextField(

            controller : textController_text,
            
            decoration: InputDecoration(
             
              hintText: "Enter the quote",
              suffixIcon : IconButton(
                
                onPressed : (){

                  textController_text.clear();

                  },
                icon : Icon(Icons.clear),

              ),
              border : OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0)
              ),
            ),
            
          ),
          SizedBox(
              height : 10.0,
            ),
            TextField(
              controller: textController_author,
              decoration: InputDecoration(
                hintText: "Author name",
                suffixIcon: IconButton(
                  onPressed : (){
                    textController_author.clear();
                    },
                  icon : Icon(Icons.clear),
                ),
                border : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),

            ),
            SizedBox(
              height : 10.0,
            ),
            ElevatedButton(
              onPressed : (){
                
              },
              child: Text("Add"),
               
            ),
        ]
       ),
       ),
    );
  }
}
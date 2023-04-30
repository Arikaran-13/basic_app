import "package:basic_app/quotes.dart";
import "package:flutter/material.dart";

class QuoteCards extends StatelessWidget{

Quotes? quotes;
VoidCallback? delete;

QuoteCards({this.quotes,this.delete});
  @override
  Widget build (BuildContext context){

  return Card(

   margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children : <Widget>[
        Text(
          quotes!.text!,
          style : TextStyle(
            fontSize: 20.0,
            color : Colors.grey[600],

          ),
         
        ),
        const SizedBox(
            height : 10.0,
          ),
          Text(
            quotes!.author!,
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.grey[800],
            ),
          ),
          TextButton.icon(
            onPressed: delete,
            label: Text("delete"),
            icon: Icon(Icons.delete),
          ),
          
      ]
    ),
    ),
  );
  }
}
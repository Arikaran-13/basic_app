import "package:basic_app/new_quote.dart";
import "package:basic_app/quotes.dart";
import "package:flutter/material.dart";
import "package:basic_app/quote_card.dart";
void main()=> runApp( MaterialApp(
      
      routes: {
        "/newquote":(context)=>NewQuote()
      },

      debugShowCheckedModeBanner : false,

      home: Home()));

class Home extends StatefulWidget{

@override
State<Home> createState(){
  return HomeState();
}

}

class HomeState extends State<Home>{

List<Quotes> quotes = [

  Quotes(author: "Arikaran", text: "All is well"),
  Quotes(author: "John", text: "Trust no one"),
  Quotes(author: "Abdul kalam", text: "Last bench is the best brain of the world"),
  Quotes(author: "Abdul kalam", text: "Last bench is the best brain of the world"),
  
  
  ];

void addQuote(Quotes q){
  setState(()=>quotes.add(q));
}

  @override
  Widget build( BuildContext context){

    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome quotes"),
          backgroundColor: Colors.redAccent,
          centerTitle : true,
        ),
        floatingActionButton: FloatingActionButton(
           
           onPressed : ()
           { 
            Navigator.pushNamed(context,"/newquote");
            },
           child: Icon(Icons.add)
        ),
        body: Column(
          children: quotes.map((q)=>QuoteCards(
            quotes: q,
             delete: ()=>{

            setState(()=>  quotes.remove(q))
           
          } )
          ).toList(),
        
        ),
        );
      
   
  }
  
  
 
}


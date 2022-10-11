import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home:QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes =[
    Quote(text: "Any fool can write code that a computer can understand.Good programmers write code that humans can understand."
        ,author: "Martin Fowler"),
    Quote(text: "Experience is the name everyone gives to their mistakes.", author: "Oscar Wilde"),
    Quote(text: "Simplicity is the soul of efficiency.", author: "Austin Freeman"),
    Quote(text: "Fix the cause, not the symptom.", author: "Steve Maguire"),
    Quote(text: "Knowledge is power.", author: "Francis Bacon")

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),

      ),
    );
  }
}

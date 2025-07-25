import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Decider App"),
        backgroundColor: Colors.pinkAccent,
        actions: [
          Padding(
              padding:const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.blue,
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20.00),
            child: Icon(
              Icons.history,
              color: Colors.blue
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Decisions Left:##"),
                ),
                Spacer(),
                _buildQuestionForm(),
                Spacer(),
                Padding(
                    padding:const EdgeInsets.all(0.0),
                    child: Text("Account Type: Free"),
                )
              ],//children
            ),
          ),
      ),
    );
  }

  Widget _buildQuestionForm(){
    return Column(
    children:[
      Text("Should I",
      style: Theme.of(context).textTheme.headlineLarge,
      ),//Text
      Padding(
        padding: const  EdgeInsets.only(
        bottom: 10.0,
        left: 30.0,
        right: 30.0,
    ),//Edge Insets.only
    child: TextField(
      decoration: InputDecoration(
      helperText:"Enter a Question"
        ),
      ),
    ),
    ElevatedButton(
      onPressed:() {print("Clicked!");},
      child: Text("Ask"),
    )
    ],//children
    );
  }//BuilderForm
}//Class

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ShowSearchBox extends StatefulWidget {
  const ShowSearchBox({ Key key,}) : super (key: key);

  @override
  _ShowSearchBox createState() => _ShowSearchBox();
}


class _ShowSearchBox extends State<ShowSearchBox> {

  String _name = '';


    @override
  Widget build(BuildContext context) {
    return

      Padding(
        padding: const EdgeInsets.fromLTRB(10, 210, 10, 0),
        child: Container(

          height: 145.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            border: Border.all(color: Theme.of(context).highlightColor),
            borderRadius: BorderRadius.circular(4.0),
          ),


          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5,8,5,8),
                child: TextButton.icon(
                  onPressed: ()
                    { Navigator.pushNamed(context, '/whereTo');
                    print('Button #1 is clicked!');},
                  icon: Icon(Icons.keyboard),
                  label: Text('Where are you going?'),style:ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(width: 1, color: Theme.of(context).highlightColor)),
                    foregroundColor: MaterialStateProperty.all(Theme.of(context).highlightColor),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
                    textStyle:
                    MaterialStateProperty.all(TextStyle(fontSize: 25))
                ),
                )
              ),

                /*TextButton.styleFrom(
                    primary: Theme.of(context).bottomAppBarColor,
                    backgroundColor: Theme.of(context).unselectedWidgetColor,
                    textStyle: TextStyle(fontSize: 30),*/


              Row (
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton.icon(
                        label: Text('Hej'),
                        icon: Icon(Icons.home_outlined),
                        onPressed: () {
                          print('elevated');
                        }
                      ),
                      Text('Home', style: TextStyle(
                          fontSize: 15, color: Theme.of(context).highlightColor),
                          textAlign: TextAlign.center)
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.work_outline),
                        color: Colors.blue,
                        tooltip: 'Work',
                        iconSize: 40,
                        onPressed: () {_onSearchButtonPressed();}
                      ),
                      Text('Work', style: TextStyle(
                      fontSize: 15, color: Theme.of(context).highlightColor),
                      textAlign: TextAlign.center),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        color: Colors.redAccent,
                        tooltip: 'places',
                        iconSize: 40,
                        onPressed: () {}
                      ),
                      Text('My Places', style: TextStyle(
                      fontSize: 15, color: Theme.of(context).highlightColor),
                      textAlign: TextAlign.center),
                    ],
                  ),
                ],
              ),

            ],
          ),

        ),
      );
  }

  void _onSearchButtonPressed() {
    print("button clicked");
  }
}

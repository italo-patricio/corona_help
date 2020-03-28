import 'package:flutter/cupertino%202.dart';
import 'package:flutter/material.dart';

class QuestionCoronaFragment extends StatefulWidget {

  final Function resp;
  const QuestionCoronaFragment({Key key, this.resp}) : super(key: key);

  @override
  _QuestionCoronaFragmentState createState() => _QuestionCoronaFragmentState();
}

class _QuestionCoronaFragmentState extends State<QuestionCoronaFragment> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
//        height: MediaQuery.of(context).size.height * .8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Text(
                "Você é portador do novo corona vírus?",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.grey[300]),
                    child: FlatButton(
                      child: Text("Não"),
                      onPressed: () {
                        widget.resp(false);
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.redAccent),
                    child: FlatButton(child: Text("Sim", style: TextStyle(color: Colors.white),), onPressed: () {
                      widget.resp(true);
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

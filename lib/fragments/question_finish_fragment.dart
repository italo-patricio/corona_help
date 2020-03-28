import 'package:flutter/material.dart';

class QuestionFinishFragment extends StatelessWidget {
  final Function resp;

  const QuestionFinishFragment({Key key, this.resp}) : super(key: key);

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
                "Muito obrigado pelas respostas, agora navegue e veja se existe alguém com sintomas nas proximidades.",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.redAccent),
              child: FlatButton(
                  child: Text(
                    "Finalizar",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

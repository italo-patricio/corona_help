import 'package:flutter/material.dart';

class QuestionSymptomsFragment extends StatefulWidget {

  Function resp;
  bool isSwitched = false;

  QuestionSymptomsFragment({Key key, this.resp}) : super(key: key);

  @override
  _QuestionSymptomsFragmentState createState() {
    return _QuestionSymptomsFragmentState();
  }
}

class _QuestionSymptomsFragmentState extends State<QuestionSymptomsFragment> {


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
                "Agora nos informe se esta com alguns dos sintomas:",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24, right: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Febre: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Checkbox(
                        value: widget.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeColor: Colors.redAccent[700],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Coriza: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Checkbox(
                        value:  widget.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeColor: Colors.redAccent[700],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Nariz entupido: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Checkbox(
                        value:  widget.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeColor: Colors.redAccent[700],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Tosse: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Checkbox(
                        value:  widget.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeColor: Colors.redAccent[700],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Dor de cabeça: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Checkbox(
                        value:  widget.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeColor: Colors.redAccent[700],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Dor no corpo: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Checkbox(
                        value:  widget.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeColor: Colors.redAccent[700],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Mal estar geral: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Checkbox(
                        value:  widget.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeColor: Colors.redAccent[700],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Dor de garganta: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Checkbox(
                        value:  widget.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            widget.isSwitched = value;
                          });
                        },
                        activeColor: Colors.redAccent[700],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width *.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.redAccent),
                    child: FlatButton(child: Text("Enviar", style: TextStyle(color: Colors.white),), onPressed: () {
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

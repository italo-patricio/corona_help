import 'package:flutter/material.dart';
class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * .05,),
          Center(
              child: Text(
                "Italo Patricio",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 20,),
          Expanded(
            child:Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 24, right: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Febre: ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          Checkbox(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
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
                            value:  isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
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
                            value:  isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
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
                            value:  isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
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
                            value:  isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
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
                            value:  isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
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
                            value:  isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
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
                            value:  isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeColor: Colors.redAccent[700],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.redAccent),
                  child: FlatButton(
                      child: Text(
                        "Sair",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}



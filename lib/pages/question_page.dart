
import 'package:coronahelp/fragments/question_corona_fragment.dart';
import 'package:coronahelp/fragments/question_finish_fragment.dart';
import 'package:coronahelp/fragments/question_symptoms_fragment.dart';
import 'package:coronahelp/models/health_model.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  HealthConditionModel healthConditionModel = HealthConditionModel();
  PageController _pageController = PageController(initialPage: 0);

  int _indexSelected = 0;


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (page) {
        print(page);
        setState(() {
          _indexSelected = page;
        });
      },
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        QuestionCoronaFragment(resp: this._onGetAnswerPage),
        QuestionSymptomsFragment(resp: this._onGetAnswerPage),
        QuestionFinishFragment(resp: this._onGetAnswerPage),

      ],
    );
  }

  _onGetAnswerPage(resp) {
    print(resp);
    _pageController.nextPage(duration: Duration(milliseconds: 200),curve: Curves.easeInOut);
  }

   onNextPage(resp) {

   }

}

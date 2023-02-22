import 'package:flutter/material.dart';
import 'package:harry_poter_houses/helper.dart';

void main() {
  runApp(HarryPoterPage());
}

class HarryPoterPage extends StatelessWidget {
  const HarryPoterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HarryPoterHouses(),
    );
  }
}

Helper helper = Helper();

class HarryPoterHouses extends StatefulWidget {
  const HarryPoterHouses({Key? key}) : super(key: key);

  @override
  State<HarryPoterHouses> createState() => _HarryPoterHousesState();
}

class _HarryPoterHousesState extends State<HarryPoterHouses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/harrypotter.jpg'),
          fit: BoxFit.cover,
        )),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  flex: 12,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 120),
                      child: Text(
                        helper.getQuestion(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Visibility(
                    child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        setState(() {
                          helper.nextQuestion(1);
                        });
                      },
                      child: Text(
                        helper.getChoice1(),
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  )),
              SizedBox(
                height: 50.0,
              ),
              Expanded(
                  flex: 2,
                  child: Visibility(
                      visible: helper.buttonShouldBeVisible(),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {
                          setState(() {
                            helper.nextQuestion(2);
                          });
                        },
                        child: Text(
                          helper.getChoice2(),
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:cross_multiply/widgets/input_field.dart';
import 'package:flutter/material.dart';

class SimplePage extends StatefulWidget {
  SimplePage({Key? key}) : super(key: key);

  @override
  _SimplePageState createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  final TextEditingController tec01 = TextEditingController();
  final TextEditingController tec02 = TextEditingController();
  final TextEditingController tec03 = TextEditingController();
  final TextEditingController tec04 = TextEditingController();

  @override
  void initState() {
    super.initState();

    tec01.addListener(_calculateValue);
    tec02.addListener(_calculateValue);
    tec03.addListener(_calculateValue);
  }

  @override
  void dispose() {
    tec01.dispose();
    tec02.dispose();
    tec03.dispose();
    tec04.dispose();
    super.dispose();
  }

  void _calculateValue() {
    double value01 = tec01.text == "" ? 1.1 : 1.2;
    double value02 = tec02.text == "" ? 2.1 : 2.2;
    double value03 = tec03.text == "" ? 3.1 : 3.2;
    var x;

    if (tec01.text == "" || tec02.text == "" || tec03.text == "") {
      tec04.text = "x";
    } else {
      x = (double.parse(tec02.text) *
              double.parse(tec03.text) /
              double.parse(tec01.text))
          .toString();
    }

    tec04.text = x == null ? "x" : x.toString();
    print("x = $x");
    print("value01 = $value01\nvalue02 = $value02\nvalue03 = $value03");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simples"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: InputFieldWidget(
                    toNext: true,
                    hasAutoFocus: true,
                    textEditingController: tec01,
                  ),
                ),
                Text(" = "),
                Flexible(
                  child: InputFieldWidget(
                    toNext: true,
                    textEditingController: tec02,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: InputFieldWidget(
                    toNext: false,
                    textEditingController: tec03,
                  ),
                ),
                Text(" = "),
                Flexible(
                  child: InputFieldWidget(
                    isEnabled: false,
                    toNext: false,
                    textEditingController: tec04,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

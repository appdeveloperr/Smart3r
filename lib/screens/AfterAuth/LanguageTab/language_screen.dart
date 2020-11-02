import 'package:Anecdote/screens/AfterAuth/NewTab/new_screen.dart';
import 'package:Anecdote/screens/AfterAuth/tabs_screen.dart';
import 'package:Anecdote/widgets/SlideRightRoute.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../../widgets/flag_widget.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  var _translatedBy = "Translated by Simon P.";
  var _selectedFlagId = 6;

  void _setTranslatedBy(var text, var selectedItemId) {
    setState(() {
      _translatedBy = text;
      _selectedFlagId = selectedItemId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(context, SlideRightRoute(page: TabsScreen()));
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Column(
          children: [
            Text(
              _translatedBy,
              style: TextStyle(
                  color: Color.fromRGBO(19, 25, 70, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                ),
                width: 130,
                child: Center(
                    child: Column(
                  children: [
                    InkWell(
                      onTap: () => _setTranslatedBy("Traduit per Adrien V.", 1),
                      child: Container(
                          color: _selectedFlagId == 1
                              ? Color.fromRGBO(210, 210, 210, 1)
                              : Colors.white,
                          child: Flag('assets/images/icons/Flag-France.png')),
                    ),
                    InkWell(
                      onTap: () => _setTranslatedBy("Trdotto da Enzo P.", 2),
                      child: Container(
                          color: _selectedFlagId == 2
                              ? Color.fromRGBO(210, 210, 210, 1)
                              : Colors.white,
                          child: Flag('assets/images/icons/Flag-Italie.png')),
                    ),
                    InkWell(
                      onTap: () =>
                          _setTranslatedBy("Traducido po Aguilar D", 3),
                      child: Container(
                          color: _selectedFlagId == 3
                              ? Color.fromRGBO(210, 210, 210, 1)
                              : Colors.white,
                          child: Flag('assets/images/icons/Flag-Spain.png')),
                    ),
                    InkWell(
                      onTap: () => _setTranslatedBy("Tulkojusi Subine V.", 4),
                      child: Container(
                          color: _selectedFlagId == 4
                              ? Color.fromRGBO(210, 210, 210, 1)
                              : Colors.white,
                          child: Flag('assets/images/icons/Flag-Latvia.png')),
                    ),
                    InkWell(
                      onTap: () =>
                          _setTranslatedBy("Tradotto da Aleksei K.", 5),
                      child: Container(
                          color: _selectedFlagId == 5
                              ? Color.fromRGBO(210, 210, 210, 1)
                              : Colors.white,
                          child: Flag('assets/images/icons/Flag-Russia.png')),
                    ),
                    InkWell(
                      onTap: () =>
                          _setTranslatedBy("Translated by Simon P.", 6),
                      child: Container(
                          color: _selectedFlagId == 6
                              ? Color.fromRGBO(210, 210, 210, 1)
                              : Colors.white,
                          child: Flag('assets/images/icons/Flag-UK.png')),
                    )
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

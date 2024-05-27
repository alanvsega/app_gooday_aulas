import 'package:app_gooday/src/componets/color_style.dart';
import 'package:app_gooday/src/componets/intro_page.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> with TickerProviderStateMixin {
  late TabPageSelector _tabPageSelector; 

  @override
  void initState() {
    super.initState();

    _tabPageSelector = TabPageSelector(
      controller: TabController(length: 4, vsync: this),
      selectedColor: ColorStyle.primary,
      color: ColorStyle.secondary,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.primary,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: ColorStyle.primary,
      ),
      body: PageView(
        children: [
          IntroPage(
            image: Image.asset('lib/assets/Logotipo.png'),
            tabPageSelector: _tabPageSelector,
            title: 'Foo',
            description: 'Bar',
          ),
          const Text('Página 2'),
          const Text('Página 3'),
          const Text('Página 4'),
        ],
      ),
    );
  }
}
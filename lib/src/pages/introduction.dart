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
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();

    _tabPageSelector = TabPageSelector(
      controller: TabController(length: 4, vsync: this),
      selectedColor: ColorStyle.primary,
      color: ColorStyle.secondary,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    void goToNextPage() {
      _pageController.nextPage(
        duration: Durations.medium4, 
        curve: Curves.easeIn
      );
    }

    return Scaffold(
      backgroundColor: ColorStyle.primary,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            if (_pageController.page == 0) {
              Navigator.pop(context);
            } else {
              _pageController.previousPage(
                duration: Durations.medium4, 
                curve: Curves.easeIn
              );
            }
          },
        ),
        backgroundColor: ColorStyle.primary,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          _tabPageSelector.controller?.index = index;
        },
        children: [
          IntroPage(
            image: Image.asset('lib/assets/intro-page-1.jpeg'),
            tabPageSelector: _tabPageSelector,
            title: 'Viva bem',
            description: 'Aprendam Flutter e jogem bola final de semana',
            onButtonPressed: goToNextPage,
          ),
          IntroPage(
            image: Image.asset('lib/assets/intro-page-2.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'Treine bem',
            description: 'Toma bastante suco e whey e coca e creatina e fica monstrão!',
            onButtonPressed: goToNextPage
          ),
          IntroPage(
            image: Image.asset('lib/assets/intro-page-3.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'Divirta-se',
            description: 'Vamo pro baile ouvir uma música e come Mc Donalds',
            onButtonPressed: goToNextPage,
          ),
          IntroPage(
            image: Image.asset('lib/assets/intro-page-4.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'Alimente-se bem',
            description: 'Não vamos comer Mc Donalds, só arroz e feijão',
            onButtonPressed: goToNextPage,
          ),
        ],
      ),
    );
  }
}
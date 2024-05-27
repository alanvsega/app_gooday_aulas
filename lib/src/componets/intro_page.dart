import 'package:flutter/material.dart';

import 'color_style.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({
    super.key,
    required Image image,
    required TabPageSelector tabPageSelector,
    required String title,
    required String description,
    required Function onButtonPressed
  }) : _tabPageSelector = tabPageSelector,
    _image = image,
    _title = title,
    _description = description,
    _onButtonPressed = onButtonPressed;

  final Image _image;
  final TabPageSelector _tabPageSelector;
  final String _title;
  final String _description;
  final Function _onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 -
                AppBar().preferredSize.height,
            width: MediaQuery.of(context).size.width,
            child: _image,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: _tabPageSelector,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    _title,
                    style: const TextStyle(
                      color: ColorStyle.primary,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 20),
                  child: Text(
                    _description,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed(),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorStyle.primary,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20)),
                  child: const Icon(
                    Icons.arrow_right_alt_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

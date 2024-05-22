import 'package:app_gooday/src/componets/color_style.dart';
import 'package:flutter/material.dart';

class HowAccess extends StatefulWidget {
  const HowAccess({super.key});

  @override
  State<HowAccess> createState() => _HowAccessState();
}

class _HowAccessState extends State<HowAccess> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Image.network(
              'https://www.doglife.com.br/site/assets/images/gato-e-cao.png',
              width: MediaQuery.of(context).size.width,
              height: 339,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('Ótimo dia!',
                style: TextStyle(
                  color: ColorStyle.text,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          const Text(
            'Como deseja acessar?',
            style: TextStyle(
              color: ColorStyle.text,
              fontSize: 15,
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
            child: 
            SizedBox(
              height: 62,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton.icon(
                onPressed: () => {
                  Navigator.pushNamed(context, '/login')
                },
                icon: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png',
                  width: 50,
                  height: 50,
                ),
                label: const Text(
                  'Como deseja acessar?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: ColorStyle.primary,
                  side: const BorderSide(
                    color: ColorStyle.primary,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

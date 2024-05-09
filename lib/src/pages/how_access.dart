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
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          const Text(
            'Como deseja acessar?',
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
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
                onPressed: () => {},
                icon: Image.network(
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Fbr%2Ficone-gratis%2Fgoogle_2504739&psig=AOvVaw3i87d57U9xI1YUpGA2OH4y&ust=1714520809906000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiCj_DN6IUDFQAAAAAdAAAAABAE',
                  width: 32,
                  height: 32,
                ),
                label: const Text(
                  'Como deseja acessar?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(20, 200, 113, 1.0),
                  side: const BorderSide(
                    color: Color.fromRGBO(20, 200, 113, 0.5),
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

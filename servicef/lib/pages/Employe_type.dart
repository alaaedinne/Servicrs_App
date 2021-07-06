import 'package:flutter/material.dart';
import 'package:servicef/component/grid_ui.dart';
import 'package:servicef/component/swiper_card.dart';

// ignore: camel_case_types
class employe_type extends StatelessWidget {
  items item1 = new items(
    title:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    go: () {},
    icon: Icons.house,
    icon2: Icons.arrow_forward_ios,
  );

  items item2 = new items(
    title:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    go: () {},
    icon: Icons.car_rental,
    icon2: Icons.arrow_forward_ios,
  );
  items item3 = new items(
    title:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    go: () {},
    icon: Icons.logout,
    icon2: Icons.arrow_forward_ios,
  );

  @override
  Widget build(BuildContext context) {
    List<items> myList = [
      item1,
      item2,
      item3,
    ];
    item1.go = () {
      Navigator.of(context).pushNamed('welcom');
    };
    item2.go = () {
      Navigator.of(context).pushNamed('transport');
    };
    item3.go = () {
      Navigator.pop(context);
    };

    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            children: myList
                .map(
                  (data) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: swipper_card(
                        icon: data.icon,
                        text: data.title,
                        icon2: data.icon2,
                        go: data.go,
                        onPressed: () {},
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class items {
  IconData icon;
  String title;
  IconData icon2;
  Function go;
  items({
    this.icon,
    this.title,
    this.icon2,
    this.go,
  });
}

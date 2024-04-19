import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 20,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return Stack(children: [
          Container(
            width: 370,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Center(
                            child: Image.asset(
                              "assets/images/leaf.png",
                              width: 24,
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Author",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("1,028 Meetups")
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 200),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor:
                                const Color.fromARGB(255, 15, 85, 143),
                            minimumSize: Size(140, 40)),
                        onPressed: () {},
                        child: const Text(
                          'See more',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
              top: 90,
              left: 20,
              child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://img.pikbest.com/origin/09/28/50/096pIkbEsTsPx.jpg!w700wp'))),
          const Positioned(
            top: 90,
            left: 50,
            child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://img.pikbest.com/origin/09/28/50/096pIkbEsTsPx.jpg!w700wp')),
          ),
          const Positioned(
              top: 90,
              left: 90,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://img.pikbest.com/origin/09/28/50/096pIkbEsTsPx.jpg!w700wp"),
              )),
          const Positioned(
              top: 90,
              left: 130,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://img.pikbest.com/origin/09/28/50/096pIkbEsTsPx.jpg!w700wp"),
              )),
          const Positioned(
              top: 90,
              left: 170,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://img.pikbest.com/origin/09/28/50/096pIkbEsTsPx.jpg!w700wp"),
              ))
        ]);
      },
    );
  }
}

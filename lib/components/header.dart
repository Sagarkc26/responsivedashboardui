import 'package:flutter/material.dart';

import '../screens/constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white10)),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 56,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRQVpomqQ8EJ4KE9sZ9zBKOotfAR5L1UQkYEBclMhJ3r4j7FAUFwx-xibtaWpozLZbKCa5DhfajUSb9D6g"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text("Gleen Maxwell"),
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

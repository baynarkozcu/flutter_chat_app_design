import 'package:flutter/material.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          height: 120,
          width: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add),
              Text("Add Story"),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 7,
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ],
    );
  }
}

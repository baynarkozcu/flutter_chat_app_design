import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.label,
    this.image,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final String label;
  final String? image;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: height * 0.06,
      width: width,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: image != null
            ? SvgPicture.asset(
                image!,
                height: 35,
              )
            : const Icon(
                Icons.lock,
                color: Colors.black,
                size: 75,
              ),
        label: Text(
          label,
          style: TextStyle(
            color: textColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }
}

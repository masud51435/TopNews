import 'package:flutter/material.dart';

class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    super.key,
    required this.text,
    this.anotherItem = const SizedBox.shrink(),
    this.textColor,
    required this.onTap,
  });

  final String text;
  final Widget anotherItem;
  final Color? textColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: textColor,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          InkWell(
            onTap: onTap,
            child: const Row(
              children: [
                Text(
                  'view all',
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(width: 3),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          )
        ],
      ),
    );
  }
}

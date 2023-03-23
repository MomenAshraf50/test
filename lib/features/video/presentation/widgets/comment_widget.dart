import 'package:flutter/material.dart';
import 'package:jobtest/core/utils/resources/constants_manager.dart';
import 'package:jobtest/core/utils/resources/extensions_manager.dart';
import 'package:jobtest/core/utils/widgets/default_text.dart';

class CommentWidget extends StatelessWidget {
  CommentWidget({
    Key? key,
    required this.avatarColor,
    required this.userName,
    required this.time,
    required this.comment,
    required this.likes,
  }) : super(key: key);
  Color avatarColor;
  String userName;
  String time;
  String comment;
  String likes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: avatarColor,
            ),
            horizontalSpace(2.w),
            DefaultText(
              title: userName,
              color: Colors.grey,
            ),
            horizontalSpace(2.w),
            CircleAvatar(
              radius: 2.rSp,
              backgroundColor: Colors.grey,
            ),
            horizontalSpace(2.w),
            DefaultText(
              title: time,
              color: Colors.grey,
            ),
          ],
        ),
        verticalSpace(1.h),
        DefaultText(title: comment),
        Row(
          children: [
            const Spacer(),
            const Icon(Icons.more_horiz, color: Colors.grey),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.reply, color: Colors.grey)),
            const DefaultText(
              title: 'Reply',
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_upward, color: Colors.grey)),
            DefaultText(
              title: likes,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_downward, color: Colors.grey)),
          ],
        )
      ],
    );
  }
}

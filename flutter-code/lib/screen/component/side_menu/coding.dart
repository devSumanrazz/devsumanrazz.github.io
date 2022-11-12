import 'package:flutter/material.dart';

import '../../../constant/colors_constants.dart';
import '../../../util/animated_circular_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Languages Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: "Java",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "Kotlin",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.50,
          label: "C#",
        ),
      ],
    );
  }
}

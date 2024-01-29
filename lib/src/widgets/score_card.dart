import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    super.key,
    required this.score,
    required this.level,
  });

  final ValueNotifier<int> score;
  final ValueNotifier<int> level;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([score, level]),
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Score: ${score.value}'.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium!,
              ),
              const SizedBox(width: 50),
              Text(
                'Level: ${level.value}'.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium!,
              ),
            ],
          ),
        );
      },
    );
  }
}

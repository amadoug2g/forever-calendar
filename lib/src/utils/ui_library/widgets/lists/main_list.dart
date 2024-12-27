import 'package:flutter/material.dart';
import 'package:forever_calendar/src/utils/ui_library/widgets/texts/text.dart';

class MainList extends StatelessWidget {
  const MainList({
    required this.list,
    required this.sectionTitle,
    super.key,
  });

  final List<String> list;
  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(text: sectionTitle),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return MainCard(
                  list: list,
                  index: index,
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({
    required this.list,
    required this.index,
    super.key,
  });

  final List<String> list;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Text(list[index]),
      ),
    );
  }
}

class DynamicListScreen extends StatelessWidget {
  const DynamicListScreen({
    required this.list,
    required this.sectionTitle,
    required this.colorCard,
    super.key,
  });

  final List<String> list;
  final String sectionTitle;
  final Color colorCard;

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return Center(child: Text("No $sectionTitle at the moment"));
    } else {
      return MainList(
        list: list,
        sectionTitle: "Upcoming $sectionTitle",
      );
    }
  }
}

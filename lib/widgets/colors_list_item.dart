import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/constants.dart';
import 'package:google/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:google/models/note_model.dart';
import 'package:google/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Color.fromARGB(255, 30, 95, 85),
    Color.fromARGB(255, 48, 92, 110),
    Color(0xff537D8D),
    Color.fromARGB(255, 158, 188, 122),
    Color.fromARGB(255, 94, 109, 76),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
        itemCount: colors.length,

        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}


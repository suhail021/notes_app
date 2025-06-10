import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:google/widgets/custom_app_bar.dart';
import 'package:google/widgets/list_notes_view_body.dart';
class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
     void initState() {
BlocProvider.of<NotesCubitCubit>(context).fechAllNote();
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.only(
      top: 16,right: 16,left: 16 
    )
    ,
    child: Column(
          children: [
            CustomAppBar(title: 'Notes', icon: Icon(Icons.search)),
            ListNotesViewBody(),
          ],
        ),);
  }
}
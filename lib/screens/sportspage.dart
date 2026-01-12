import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/coustemwidgets/appbar_text.dart';
import 'package:news_app/coustemwidgets/displaydata.dart';
import 'package:news_app/cubit/news_cubit.dart';

class Sportspage extends StatefulWidget {
  const Sportspage({super.key, required this.catagory});
  final String catagory;

  @override
  State<Sportspage> createState() => _SportspageState();
}

class _SportspageState extends State<Sportspage> {
  void initState() {
    super.initState();
    context.read<NewsCubit>().newsUsa(widget.catagory);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
        title: AppbarText(text1: 'Sports ', text2: 'News'),
      ),
      body: Displaydata(),
    );
  }
}

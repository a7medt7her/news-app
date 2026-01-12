import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/coustemwidgets/appbar_text.dart';
import 'package:news_app/coustemwidgets/displaydata.dart';
import 'package:news_app/cubit/news_cubit.dart';

class Healthpage extends StatefulWidget {
  const Healthpage({super.key, required this.catagory});
  final String catagory;
  @override
  State<Healthpage> createState() => _HealthpageState();
}

class _HealthpageState extends State<Healthpage> {
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
        title: AppbarText(text1: 'Health ', text2: ' News'),
      ),
      body: Displaydata(),
    );
  }
}

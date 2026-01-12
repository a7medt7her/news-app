import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/coustemwidgets/appbar_text.dart';
import 'package:news_app/coustemwidgets/homepage_data.dart';
import 'package:news_app/cubit/news_cubit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    context.read<NewsCubit>().newsUsa('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: AppbarText(text1: 'Hot ', text2: 'News'),
      ),
      body: HomepageData(),
    );
  }
}

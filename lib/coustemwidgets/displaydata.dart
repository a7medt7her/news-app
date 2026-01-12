import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/coustemwidgets/cuostom_news_list.dart';
import 'package:news_app/cubit/news_cubit.dart';

class Displaydata extends StatelessWidget {
  const Displaydata({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),

        Expanded(
          child: SizedBox(
            height: 120,
            width: 400,
            child: BlocBuilder<NewsCubit, NewsState>(
              builder: (context, state) {
                switch (state) {
                  case Newsloading():
                    return const Center(child: CircularProgressIndicator());
                  case NewsLodaded():
                    return ListView.builder(
                      itemCount: state.articles.length,
                      itemBuilder: (BuildContext context, int index) {
                        final News = state.articles[index];
                        return CuostomNewsList(
                          title: News.title,
                          description: News.description,
                          urlToImage: News.urlToImage,
                        );
                      },
                    );
                  case NewsErorrMasege():
                    return Center(
                      child: Text(
                        state.erorr,
                        style: const TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

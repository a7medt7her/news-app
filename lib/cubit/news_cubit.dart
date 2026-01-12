import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/model/articals.dart';
import 'package:news_app/network/getdata.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(Newsloading());

  Getdata getdata = Getdata();

  void newsUsa(String catagory) async {
    try {
      List<ArticalsModle> articles = await getdata.getnewsUSA(catagory);
      emit(NewsLodaded(articles));
    } catch (e) {
      emit(NewsErorrMasege("Failed to fetch news"));
    }
  }
}

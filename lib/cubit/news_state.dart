part of 'news_cubit.dart';

sealed class NewsState extends Equatable {
  const NewsState();
}

final class Newsloading extends NewsState {
  @override
  List<Object?> get props => [];
}

final class NewsLodaded extends NewsState {
  final List<ArticalsModle> articles;
  const NewsLodaded(this.articles);

  @override
  List<Object?> get props => [articles];
}

final class NewsErorrMasege extends NewsState {
  final String erorr;
  const NewsErorrMasege(this.erorr);

  @override
  List<Object?> get props => [erorr];
}

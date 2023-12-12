import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/applications/app_bloc/app_bloc.dart';
import 'package:flutter_app/core/config/injection/injection.dart';
import 'package:flutter_app/features/news/application/bloc/news_bloc/news_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewsBloc>()
        ..add(
          const NewsEvent.getArticles(),
        ),
      child: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('News'),
              actions: [
                BlocBuilder<AppBloc, AppState>(
                  builder: (context, state) {
                    return Switch.adaptive(
                      value:
                          state.brightness == Brightness.light ? true : false,
                      onChanged: (bool value) {
                        context.read<AppBloc>().add(
                              const AppEvent.changeBrightness(),
                            );
                      },
                    );
                  },
                ),
              ],
            ),
            body: state.getArticlesFailureOrSuccess.fold(
              () => state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : const SizedBox(),
              (a) => a.fold(
                (l) {
                  return Center(
                    child: Text(
                      l.maybeMap(
                        orElse: () => 'Data Kosong!',
                        dataNotFound: (_) => 'Data Tidak Ditemukan!',
                        serverError: (_) => 'Gagal Koneksi ke Server',
                      ),
                    ),
                  );
                },
                (articles) => ListView.builder(
                  itemCount: articles.length,
                  itemBuilder: (BuildContext context, int index) {
                    final article = articles[index];
                    return Text(article.byline);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

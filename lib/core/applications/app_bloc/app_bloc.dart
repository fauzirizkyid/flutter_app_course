import 'package:flutter/foundation.dart';
import 'package:flutter_app/core/domain/storages/custom_storage.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@Injectable()
class AppBloc extends Bloc<AppEvent, AppState> {
  final CustomStorage storage;

  AppBloc(this.storage) : super(AppState.initial()) {
    on<AppEvent>(
      (event, emit) async {
        await event.map(
          started: (value) async {
            var brightnessData = await storage.read('brightness');
            if (brightnessData.isNotEmpty) {
              emit(
                state.copyWith(
                  brightness: Brightness.values[int.parse(brightnessData)],
                ),
              );
            }
          },
          changeBrightness: (value) async {
            Brightness newBrightness = state.brightness == Brightness.light
                ? Brightness.dark
                : Brightness.light;

            storage.write('brightness', newBrightness.index);

            emit(state.copyWith(brightness: newBrightness));
          },
        );
      },
    );
  }
}

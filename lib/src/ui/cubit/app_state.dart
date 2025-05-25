part of 'app_cubit.dart';

class AppState extends Equatable {
  const AppState({
    this.appName = 'FetchNow',
  });

  final String appName;

  @override
  List<Object?> get props => [
        appName,
      ];
}

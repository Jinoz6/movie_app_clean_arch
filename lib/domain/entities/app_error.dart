import 'package:equatable/equatable.dart';

class AppError extends Equatable {
  final String message;
  const AppError(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

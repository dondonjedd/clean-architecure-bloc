import 'package:dartz/dartz.dart';
import 'package:tdd_tutorial/core/errors/failure.dart';

typedef ResulFuture<T> = Future<Either<Failure, T>>;

typedef ResultVoid = ResulFuture<void>;

typedef DataMap = Map<String, dynamic>;

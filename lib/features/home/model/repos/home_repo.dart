import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures,List<BookModel>>> fetchFeaturedBook();
  Future<Either<Failures,List<BookModel>>> fetchSimiliarBook(String cateogry);

}
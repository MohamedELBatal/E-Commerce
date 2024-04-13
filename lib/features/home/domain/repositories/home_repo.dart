import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failuers.dart';
import 'package:e_commerce/features/home/data/models/BrandModel.dart';
import 'package:e_commerce/features/home/data/models/CategoriesModel.dart';

abstract class HomeRepo{

  Future<Either<Failures,BrandModel>>getBrands();
  Future<Either<Failures,CategoriesModel>>getCategories();
}
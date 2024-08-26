import 'package:clean_bloc_app/core/error/failures.dart';
import 'package:clean_bloc_app/core/usecase/usecase.dart';
import 'package:clean_bloc_app/features/blogs/domain/entities/blog.dart';
import 'package:clean_bloc_app/features/blogs/domain/repositories/blog_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetAllBlogs implements UseCase<List<Blog>, NoParams> {
  final BlogRepository blogRepository;

  GetAllBlogs({required this.blogRepository});
  @override
  Future<Either<Failure, List<Blog>>> call(NoParams params) async {
    return await blogRepository.getAllBlogs();
  }
}

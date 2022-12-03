import 'package:dio/dio.dart';
import 'package:get_comments_from_api/comment_model/comment_model.dart';

class Api{

  Future<List<CommentModel>> getAllComments()async{
    Dio dio = Dio();
    List<CommentModel> comments = [];
   try{
     var response =  await dio.get("https://jsonplaceholder.typicode.com/comments");
     var list = response.data as List;
     comments = list.map((comments) => CommentModel.fromJson(comments)).toList();
   }catch(error){
     print(error.toString());
   }
   return comments;
  }
}
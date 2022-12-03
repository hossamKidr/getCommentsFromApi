import 'package:get_comments_from_api/comment_model/comment_model.dart';
import 'package:get_comments_from_api/network_comments/api.dart';

class CommentsViewModel{

  Future<List<CommentModel>> getData()async{
   return await Api().getAllComments();
  }
}
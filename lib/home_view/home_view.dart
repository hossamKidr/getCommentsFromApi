import 'package:flutter/material.dart';
import 'package:get_comments_from_api/comment_model/comment_model.dart';
import 'package:get_comments_from_api/comments_view_model/comments_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();

}

CommentsViewModel viewModel = CommentsViewModel();
class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('All Comments'),
      ),
      body: Center(
        child: FutureBuilder<List<CommentModel>>(
          future: viewModel.getData(),
          builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const CircularProgressIndicator();
            }else{
              var comments = snapshot.data;
              return ListView.builder(
                itemCount: comments!.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text('${comments[index].body}'),
                      subtitle: Text('${comments[index].name}'),
                      trailing: Text('${comments[index].email}'),
                      leading: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text('${comments[index].id}'),
                      ),
                    );
                  }
              );
            }
          },
        ),
      ),
    );
  }
}

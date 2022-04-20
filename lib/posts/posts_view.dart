import 'package:flutter/material.dart';
import './posts_view_model.dart';

class PostsView extends PostsViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: buildFloatingActionButton(),
      body: buildListView(),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        fetchAllPosts();
      },
      child: const Icon(Icons.add),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("${posts[index].title}"),
          subtitle: Text("${posts[index].body}"),
        );
      },
    );
  }
}

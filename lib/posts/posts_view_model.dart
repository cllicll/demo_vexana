import 'package:demo_vexana/posts/model/posts_model.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';
import './posts.dart';

abstract class PostsViewModel extends State<Posts> {
  INetworkManager manager = NetworkManager(
      options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  List<PostModel> posts = [];
  Future<void> fetchAllPosts() async {
    final response = await manager.send<PostModel, List<PostModel>>("/posts",
        parseModel: PostModel(), method: RequestType.GET);
    posts = response.data ?? [];
    setState(() {});
  }
}

import '../Node/node.class.dart';

class BinaryTreeSort {
   dynamic root;

  BinaryTreeSort(this.root);

  add(int data) {
    int? node = root;
    if (node == null) {
      root = Node(data: data);
    }
  }
}
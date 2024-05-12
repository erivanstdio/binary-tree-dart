class Node {
  int? data;
  int? left;
  int? right;

  Node({this.data, this.left, this.right}); 
}
class BTS {
   dynamic root;

  BTS(this.root);

  add(int data) {
    int? node = root;
    if (node == null) {
      root = Node(data: data);
    }
  }
}
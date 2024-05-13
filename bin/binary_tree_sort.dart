
import 'package:binary_tree_sort/classes/BinaryTreeSort/binary_tree_sort.class.dart';

void main() {

  BinaryTreeSort binaryTree = BinaryTreeSort();
  
  binaryTree.addNode(10);
  binaryTree.addNode(20);
  binaryTree.addNode(5);
  binaryTree.addNode(3);
  binaryTree.addNode(17);
  binaryTree.addNode(50);
  binaryTree.addNode(60);

  binaryTree.findMinimumValue();
  binaryTree.findMaximumValue();
  
}

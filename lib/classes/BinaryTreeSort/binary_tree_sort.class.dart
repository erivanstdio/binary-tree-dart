import '../Node/node.class.dart';

class BinaryTreeSort {
  Node? root;

  BinaryTreeSort({this.root});

  addNode(int dataReceived) {
    Node? newNode = root;

    if (newNode == null) {
      root = Node(dataReceived);
      return;
    } else {
      
      searchThree(Node? node) {
        
        if (dataReceived < node!.data) {
          
          if (node.left != null) {
            return searchThree(node.left);
          }
          
          return node.left ??= Node(dataReceived);
        } else if (dataReceived > node.data) {
          
          if (node.right != null) {
            return searchThree(node.right);
          }
          
          return node.right ??= Node(dataReceived);
        }
      }

      searchThree(newNode);
    }
  }


  findMinimumValue() {

    Node? currentNode = root;

    while (currentNode!.left != null) {

      currentNode = currentNode.left;
    }
    print('minimum> ${currentNode.data}');
    return currentNode.data;
  }

  findMaximumValue() {

    Node? currentNode = root;

    while (currentNode!.right != null) {

      currentNode = currentNode.right;
    }
    print('maximum> ${currentNode.data}');
    return currentNode.data;
  }

  findValue(data) {

    Node? currentNode = root;
    
    while (currentNode!.data != data) {
      
      if (data < currentNode.data) {
        
        currentNode = currentNode.left;
      } else {
        
        currentNode = currentNode.right;
      }
      
      if (currentNode == null) {
        
        print('Could not find any node with this value.');
        return null;
      }  
    }

    print('found node> ${currentNode.data}');
    return currentNode;
  }
}

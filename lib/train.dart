import 'dart:core';

void main() {
}

class DataStuctureStack {
  // Stack
  // Challenge number one
  void reverseList(List<int> list) {
    List<int> stack = [];
    for (int element in list) {
      stack.add(element);
    }
    while (stack.isNotEmpty) {
      var stack2 = stack.removeLast();
      print(stack2);
    }
  }

  // Challenge number two

  bool isBalanced(String input) {
    List<String> stack = [];

    for (int i = 0; i < input.length; i++) {
      if (input[i] == '(') {
        stack.add('(');
      } else if (input[i] == ')') {
        if (stack.isEmpty) return false;
        stack.removeLast();
      }
    }

    return stack.isEmpty;
  }
}

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class DataStrctureLinkedList {
  //LinkedList
  // Challenge number one
  void printInReverse(Node? head) {
    if (head == null) return;
    printInReverse(head.next);
    print(head.data);
  }

  // Challenge number two
  Node? findMiddleNode(Node? head) {
    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    return slow;
  }

  // Challenge number three
  Node? reverseLinkedList(Node? head) {
    Node? prev = null;
    Node? current = head;

    while (current != null) {
      Node? nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    return prev;
  }

  // Challenge number four

  Node? removeAllOccurrences(Node? head, int value) {
    while (head != null && head.data == value) {
      head = head.next;
    }

    Node? current = head;
    while (current != null && current.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }

    return head;
  }
}


pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  mapping(uint => Task) public tasks;   // in console to get the tasks on blockchain -> task = await todoList.tasks(1) {1 is task id} 

  constructor() public {  // will be triggered on TodoList.deployed()
    createTask("Complete the first blockchain project.");
  }

  function createTask(string memory _content) public {
    taskCount ++;
    tasks[taskCount] = Task(taskCount, _content, false);
  }
}
pragma solidity >=0.4.22 <0.8.0;

contract TodoList {
    uint256 public taskCount = 0;

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    constructor() public {
      createTask("check out dappuniversity.com");
    }

    function createTask(string memory content) public {
      taskCount++;
      tasks[taskCount] = Task(taskCount, content, false);
    }
}

# Ada Bug: Unexpected Array Behavior
This example demonstrates a common pitfall in Ada programming related to array copying.  Ada, by default, passes arrays by copy. This means when you assign one array to another, a complete copy of the array is created. Subsequent modifications to the original array do not affect the copy, leading to unexpected results if you expect them to be linked.

The `bug.ada` file shows the issue.  The solution in `bugSolution.ada` demonstrates how to use access types (pointers) to achieve the desired behavior of sharing the same memory location.
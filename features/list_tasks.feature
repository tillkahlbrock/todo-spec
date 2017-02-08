Feature: List tasks

Scenario: Listing all tasks, but task list is empty
When I list all uncompleted tasks
Then I should see the empty list message

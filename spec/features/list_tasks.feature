Feature: List tasks

Scenario: Listing all tasks, but task list is empty
  When I list all uncompleted tasks
  Then I should see the empty list message

Scenario: Creating a tasks and listing them
  When I create a task with the title "My special task 1"
  And I create a task with the title "My special task 2"
  When I list all uncompleted tasks
  Then I should see a the task "My special task 1"
  And I should see a the task "My special task 2"

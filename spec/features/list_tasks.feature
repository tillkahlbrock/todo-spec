Feature: List tasks

Scenario: Listing all tasks, but task list is empty
  When I list all uncompleted tasks
  Then I should see the empty list message

Scenario: Creating tasks and listing them
  When I create a task with the title "My special task 1"
  And I create a task with the title "My special task 2"
  When I list all uncompleted tasks
  Then I should see a the task "My special task 1"
  And I should see a the task "My special task 2"

Scenario: Completing task will hide them
  When I create a task with the title "My special task 1"
  And I create a task with the title "My special task 2"
  And I mark the task with the title "My special task 2" as completed
  And I list all uncompleted tasks
  Then I should see a the task "My special task 1"
  And I should not see a the task "My special task 2"
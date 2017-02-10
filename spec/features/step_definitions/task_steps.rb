When(/^I list all uncompleted tasks$/) do
  @taskListString = `todo-cli list`
end

Then(/^I should see the empty list message$/) do
  expect(@taskListString.rstrip).to eq('Such empty...')
end


When(/^I create a task with the title "([^"]*)"$/) do |title|
  cmd = "todo-cli add --title='#{title}'"
  `#{cmd}`
end

Then(/^I should see a the task "([^"]*)"$/) do |title|
  expect(@taskListString).to include(title)
end
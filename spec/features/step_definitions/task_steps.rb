When(/^I list all uncompleted tasks$/) do
  @taskListString = `todo-cli list`
end

Then(/^I should see the empty list message$/) do
  expect(@taskListString.rstrip).to eq('Such empty...')
end


When(/^I create a task with the title "([^"]*)"$/) do |title|
  cmd = "todo-cli add --title='#{title}'"
  id = `#{cmd}`
  if @tasks_ids.nil?
    @tasks_ids = {}
  end
  @tasks_ids[title] = id.strip
end

Then(/^I should see a the task "([^"]*)"$/) do |title|
  expect(@taskListString).to include(title)
end

And(/^I mark the task with the title "([^"]*)" as completed$/) do |title|
  fail unless @tasks_ids.key? title
  id = @tasks_ids[title]
  cmd = "todo-cli complete --id='#{id}'"
  `#{cmd}`
end

And(/^I should not see a the task "([^"]*)"$/) do |title|
  expect(@taskListString).not_to include(title)
end
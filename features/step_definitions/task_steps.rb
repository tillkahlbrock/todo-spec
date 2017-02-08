When(/^I list all uncompleted tasks$/) do
  @taskListString = `todo-cli list`
end

Then(/^I should see the empty list message$/) do
  expect(@taskListString.rstrip).to eq('Such empty...')
end

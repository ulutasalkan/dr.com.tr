When(/^I go to website$/) do
  visit("http://www.dr.com.tr")
  page.driver.browser.manage.window.maximize
end

Then(/^open the Login page$/) do
  find("li.giris").click
end

And(/^enter the username and password$/) do |info|
  # table is a table.hashes.keys # => [:ulutasalkan@hotmail.com, :69150000]
  find_by_id("EmailField").set info.raw[0][0]
  find_by_id("PasswordField").set info.raw[0][1]
end

And(/^click the Login button$/) do
  find_by_id("login_btn").click
end
When(/^I enter the keyword of product$/) do |info|
  # table is a table.hashes.keys # => [:Notebook Acer i7]
  find("div.search-bar > input.searchInput").click
  find("div.search-bar > input.searchInput").set info.raw[0][1]
end

And(/^click the search button$/) do
 find_by_id("searchIcon").click
end

Then(/^products should be shown on screen "([^"]*)"$/) do |searchKey|
  expect(find("section.full-content")).to have_text searchKey
end

When(/^Find specified book$/) do |searchSpecs|
  # table is a table.hashes.keys # => [:Name, :Tarih ve Roman]
  find_by_id("catPageContent").find("section.shelf").find_by_id("container").find("div.list-cell").all? { |x|
    x.each { |a| p a }
  }

  # while flag
  #
  # end
end
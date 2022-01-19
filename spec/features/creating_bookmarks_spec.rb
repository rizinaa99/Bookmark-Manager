feature "Adding new bookmark" do
  scenario "We can add new bookmarks to our list" do
    visit "/new_bookmark"
    fill_in("url", with: "www.you.com")
    click_button "submit"
    expect(page).to have_content "www.you.com"
  end
  end
    

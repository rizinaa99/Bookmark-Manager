feature "viewing bookmarks" do
  scenario "visiting index page" do
    visit ("/")
    expect(page).to have_content ("https://www.google.com/")
    # expect(page).to have_content "Bookmarks"
    # expect(page).to have_link("Google", :href => "https://www.google.com/")
    # expect(page).to have_link("Makers", :href => "http://www.makersacademy.com/")
    # expect(page).to have_link("Software", :href => "http://www.destroyallsoftware.com")
  end
end

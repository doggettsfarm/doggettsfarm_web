require "rails_helper"

RSpec.describe "Home page" do
  it "shows the title and things" do
    visit "/"
    expect(page.title).to eq "Doggetts Farm"
    within "footer" do
      expect(page).to have_text "D. W. Squier"
    end
  end
end

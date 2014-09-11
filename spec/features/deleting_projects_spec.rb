require 'spec_helper'

feature "A user should be able to delete a project" do
    scenario "delete a project" do
       FactoryGirl.create(:project, name: "TextMate 2")

       visit '/'
       click_link "TextMate 2"
       click_link "Delete Project"

       expect(page).to have_no_content("TextMate 2")
    end
end
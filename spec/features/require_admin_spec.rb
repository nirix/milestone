require 'rails_helper'

RSpec.feature "RequireAdmins", type: :feature do
  it "should deny guests" do
    visit admin_root_path
    expect(page).to have_text "You didn't say the magic word"
  end

  it "should deny regular users" do
    user = create(:user, password: "IamGROOT")

    login user.username, 'IamGROOT'

    visit admin_root_path
    expect(page).to_not have_text "Login"
    expect(page).to have_text "You didn't say the magic word"
  end

  it "should allow admins" do
    create_admin_and_login

    visit admin_root_path
    expect(page).to_not have_text "Login"
    expect(page).to_not have_text "You didn't say the magic word"
    expect(page).to have_text "Admin"
  end
end

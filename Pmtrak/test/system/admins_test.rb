require "application_system_test_case"

class AdminsTest < ApplicationSystemTestCase
  setup do
    @admin = admins(:one)
  end

  test "visiting the index" do
    visit admins_url
    assert_selector "h1", text: "Admins"
  end

  test "creating a Admin" do
    visit admins_url
    click_on "New Admin"

    fill_in "Address", with: @admin.address
    fill_in "Credit number", with: @admin.credit_number
    fill_in "Email", with: @admin.email
    fill_in "Name", with: @admin.name
    fill_in "Password", with: @admin.password_digest
    fill_in "Phone number", with: @admin.phone_number
    fill_in "Username", with: @admin.username
    click_on "Create Admin"

    assert_text "Admin was successfully created"
    click_on "Back"
  end

  test "updating a Admin" do
    visit admins_url
    click_on "Edit", match: :first

    fill_in "Address", with: @admin.address
    fill_in "Credit number", with: @admin.credit_number
    fill_in "Email", with: @admin.email
    fill_in "Name", with: @admin.name
    fill_in "Password", with: @admin.password_digest
    fill_in "Phone number", with: @admin.phone_number
    fill_in "Username", with: @admin.username
    click_on "Update Admin"

    assert_text "Admin was successfully updated"
    click_on "Back"
  end

  test "destroying a Admin" do
    visit admins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admin was successfully destroyed"
  end
end

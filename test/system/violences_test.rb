require "application_system_test_case"

class ViolencesTest < ApplicationSystemTestCase
  setup do
    @violence = violences(:one)
  end

  test "visiting the index" do
    visit violences_url
    assert_selector "h1", text: "Violences"
  end

  test "creating a Violence" do
    visit violences_url
    click_on "New Violence"

    check "Active" if @violence.active
    fill_in "Name", with: @violence.name
    click_on "Create Violence"

    assert_text "Violence was successfully created"
    click_on "Back"
  end

  test "updating a Violence" do
    visit violences_url
    click_on "Edit", match: :first

    check "Active" if @violence.active
    fill_in "Name", with: @violence.name
    click_on "Update Violence"

    assert_text "Violence was successfully updated"
    click_on "Back"
  end

  test "destroying a Violence" do
    visit violences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Violence was successfully destroyed"
  end
end

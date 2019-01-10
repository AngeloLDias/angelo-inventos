require "application_system_test_case"

class ResersTest < ApplicationSystemTestCase
  setup do
    @reser = resers(:one)
  end

  test "visiting the index" do
    visit resers_url
    assert_selector "h1", text: "Resers"
  end

  test "creating a Reser" do
    visit resers_url
    click_on "New Reser"

    fill_in "Address", with: @reser.address
    fill_in "Email", with: @reser.email
    fill_in "Fname", with: @reser.fname
    fill_in "Lnome", with: @reser.lnome
    fill_in "Phone", with: @reser.phone
    click_on "Create Reser"

    assert_text "Reser was successfully created"
    click_on "Back"
  end

  test "updating a Reser" do
    visit resers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @reser.address
    fill_in "Email", with: @reser.email
    fill_in "Fname", with: @reser.fname
    fill_in "Lnome", with: @reser.lnome
    fill_in "Phone", with: @reser.phone
    click_on "Update Reser"

    assert_text "Reser was successfully updated"
    click_on "Back"
  end

  test "destroying a Reser" do
    visit resers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reser was successfully destroyed"
  end
end

require "application_system_test_case"

class ArtworksTest < ApplicationSystemTestCase
  setup do
    @artwork = artworks(:one)
  end

  test "visiting the index" do
    visit artworks_url
    assert_selector "h1", text: "Artworks"
  end

  test "creating a Artwork" do
    visit artworks_url
    click_on "New Artwork"

    fill_in "Description", with: @artwork.description
    fill_in "Price", with: @artwork.price
    fill_in "Title", with: @artwork.title
    click_on "Create Artwork"

    assert_text "Artwork was successfully created"
    click_on "Back"
  end

  test "updating a Artwork" do
    visit artworks_url
    click_on "Edit", match: :first

    fill_in "Description", with: @artwork.description
    fill_in "Price", with: @artwork.price
    fill_in "Title", with: @artwork.title
    click_on "Update Artwork"

    assert_text "Artwork was successfully updated"
    click_on "Back"
  end

  test "destroying a Artwork" do
    visit artworks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artwork was successfully destroyed"
  end
end

require "application_system_test_case"

class TestesTest < ApplicationSystemTestCase
  setup do
    @testis = testes(:one)
  end

  test "visiting the index" do
    visit testes_url
    assert_selector "h1", text: "Testes"
  end

  test "creating a Teste" do
    visit testes_url
    click_on "New Teste"

    fill_in "A", with: @testis.a
    fill_in "B", with: @testis.b
    fill_in "C", with: @testis.c
    click_on "Create Teste"

    assert_text "Teste was successfully created"
    click_on "Back"
  end

  test "updating a Teste" do
    visit testes_url
    click_on "Edit", match: :first

    fill_in "A", with: @testis.a
    fill_in "B", with: @testis.b
    fill_in "C", with: @testis.c
    click_on "Update Teste"

    assert_text "Teste was successfully updated"
    click_on "Back"
  end

  test "destroying a Teste" do
    visit testes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teste was successfully destroyed"
  end
end

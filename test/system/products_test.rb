require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the root" do
    # setup

    # excercise
    visit root_url

    # verify
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: 2

    # teardown
  end

  test "a user can create a product" do
    #setup
    login_as users(:user_one)

    #excercise
    visit "/products/new"

    fill_in "product_name", with: "Empanada loca"
    fill_in "product_tagline", with: "Las mejores empanadas"

    click_on "Crear producto"

    #verify
    assert_text "Las mejores empanadas"
  end
end

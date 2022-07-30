require "test_helper"

class LivresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @livre = livres(:one)
  end

  test "should get index" do
    get livres_url
    assert_response :success
  end

  test "should get new" do
    get new_livre_url
    assert_response :success
  end

  test "should create livre" do
    assert_difference("Livre.count") do
      post livres_url, params: { livre: { auteur: @livre.auteur, editeur: @livre.editeur, isbn: @livre.isbn, stock: @livre.stock, titre: @livre.titre } }
    end

    assert_redirected_to livre_url(Livre.last)
  end

  test "should show livre" do
    get livre_url(@livre)
    assert_response :success
  end

  test "should get edit" do
    get edit_livre_url(@livre)
    assert_response :success
  end

  test "should update livre" do
    patch livre_url(@livre), params: { livre: { auteur: @livre.auteur, editeur: @livre.editeur, isbn: @livre.isbn, stock: @livre.stock, titre: @livre.titre } }
    assert_redirected_to livre_url(@livre)
  end

  test "should destroy livre" do
    assert_difference("Livre.count", -1) do
      delete livre_url(@livre)
    end

    assert_redirected_to livres_url
  end
end

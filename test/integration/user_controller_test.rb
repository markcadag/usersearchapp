require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "search with no results" do
    get users_path(query: "invalid search query")
    assert_response :success
    assert_select "div#users" do
      assert_select "div", text: "No results found"
    end
  end

  test "search with results" do
    user = User.create(name: "John Doe")
    get users_path(query: "John")
    assert_response :success
    assert_select "div#users" do
      assert_select "p", text: /John Doe/
    end
  end

  test "search with results ignore case" do
    user = User.create(name: "John Doe")
    get users_path(query: "john")
    assert_response :success
    assert_select "div#users" do
      assert_select "p", text: /John Doe/
    end
  end
end
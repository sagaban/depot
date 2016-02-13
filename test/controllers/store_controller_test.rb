require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Programming Ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

  test "markup needed for store.js.coffee is in place" do
    get :index
    assert_select '.store .entry > img', 3
    assert_select '.entry input[type=submit]', 3
  end

end

=begin
  Both validation and functional tests will test the behavior of controllers only; they will not retroactively affect any objects that already exist in the database or in fixtures. In the previous example, two products contain the same title. Such data will cause no prob- lems and will go undetected up to the point where such records are modified and saved.
=end

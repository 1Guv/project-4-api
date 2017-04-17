require 'test_helper'

class PlatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plate = plates(:one)
  end

  test "should get index" do
    get plates_url, as: :json
    assert_response :success
  end

  test "should create plate" do
    assert_difference('Plate.count') do
      post plates_url, params: { plate: { meaning: @plate.meaning, plate: @plate.plate, sell_price: @plate.sell_price, user_id: @plate.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show plate" do
    get plate_url(@plate), as: :json
    assert_response :success
  end

  test "should update plate" do
    patch plate_url(@plate), params: { plate: { meaning: @plate.meaning, plate: @plate.plate, sell_price: @plate.sell_price, user_id: @plate.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy plate" do
    assert_difference('Plate.count', -1) do
      delete plate_url(@plate), as: :json
    end

    assert_response 204
  end
end

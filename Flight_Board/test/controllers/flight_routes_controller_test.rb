require 'test_helper'

class FlightRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight_route = flight_routes(:one)
  end

  test "should get index" do
    get flight_routes_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_route_url
    assert_response :success
  end

  test "should create flight_route" do
    assert_difference('FlightRoute.count') do
      post flight_routes_url, params: { flight_route: { destination: @flight_route.destination, distance: @flight_route.distance, origin: @flight_route.origin } }
    end

    assert_redirected_to flight_route_url(FlightRoute.last)
  end

  test "should show flight_route" do
    get flight_route_url(@flight_route)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_route_url(@flight_route)
    assert_response :success
  end

  test "should update flight_route" do
    patch flight_route_url(@flight_route), params: { flight_route: { destination: @flight_route.destination, distance: @flight_route.distance, origin: @flight_route.origin } }
    assert_redirected_to flight_route_url(@flight_route)
  end

  test "should destroy flight_route" do
    assert_difference('FlightRoute.count', -1) do
      delete flight_route_url(@flight_route)
    end

    assert_redirected_to flight_routes_url
  end
end

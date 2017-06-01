require 'test_helper'

class BaseSongsControllerTest < ActionController::TestCase
  setup do
    @base_song = base_songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_songs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_song" do
    assert_difference('BaseSong.count') do
      post :create, base_song: { title: @base_song.title }
    end

    assert_redirected_to base_song_path(assigns(:base_song))
  end

  test "should show base_song" do
    get :show, id: @base_song
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_song
    assert_response :success
  end

  test "should update base_song" do
    patch :update, id: @base_song, base_song: { title: @base_song.title }
    assert_redirected_to base_song_path(assigns(:base_song))
  end

  test "should destroy base_song" do
    assert_difference('BaseSong.count', -1) do
      delete :destroy, id: @base_song
    end

    assert_redirected_to base_songs_path
  end
end

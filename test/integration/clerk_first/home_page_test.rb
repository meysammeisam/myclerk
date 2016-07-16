require 'test_helper'

class HomePageTest < ActionDispatch::IntegrationTest
  def setup
  end

  test "home page test" do
    get "/"
    assert_response :success
    assert_select 'title', 'ClerkFirst'
    assert_select 'div.mdl-layout__header-row.mdl-layout--large-screen-only' do
      assert_select 'nav.mdl-navigation' do
        assert_select "a.mdl-navigation__link", 5 # anchor tag exist in top menu
        assert_select 'a.mdl-navigation__link.is-active[href="/"]', 'Home'
        assert_select 'a.mdl-navigation__link[href="/sign_in"]', 'my Clerk'
        assert_select 'a.mdl-navigation__link[href="/sign_up"]', 'Sign up'
      end
    end

    assert_select 'div.mdl-layout__drawer.mdl-layout--small-screen-only' do
      assert_select 'nav.mdl-navigation' do
        assert_select "a", 5
        assert_select 'a.mdl-navigation__link.is-active[href="/"]', 'Home'
        assert_select 'a.mdl-navigation__link[href="/sign_in"]', 'my Clerk'
        assert_select 'a.mdl-navigation__link[href="/sign_up"]', 'Sign up'
      end
    end
  end

  test "login page test" do
    get "/sign_in"
    assert_response :success
    assert_select 'main.mdl-layout__content' do
      assert_select 'h2.mdl-card__title-text', 'Log In'
      assert_select 'form#new_user.new_user' do
        assert_select 'input#user_email[type="email"]'
        assert_select 'input#user_password[type="password"]'
        assert_select 'input.mdl-button[type="submit"]'
      end
    end
    assert_select 'title', 'ClerkFirst'
  end

  test "signup page test" do
    get "/sign_up"
    assert_response :success
    assert_select 'main.mdl-layout__content' do
      assert_select 'h2.mdl-card__title-text', 'Sign up'
      assert_select 'form#new_user.new_user' do
        assert_select 'input#user_username[type="text"]'
        assert_select 'input#user_email[type="email"]'
        assert_select 'input#user_password[type="password"]'
        assert_select 'input#user_password_confirmation[type="password"]'
        assert_select 'input.mdl-button[type="submit"]'
      end
    end
    assert_select 'title', 'ClerkFirst'
  end

end

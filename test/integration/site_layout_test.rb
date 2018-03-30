require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'landing/land'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", policy_privacy_path
    assert_select "a[href=?]", policy_privacy_path(:anchor => "cookies")
    assert_select "a[href=?]", new_user_registration_path, count: 4
    assert_select "a[href=?]", new_user_session_path

    get policy_promise_path
    assert_template 'policy/promise'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", policy_privacy_path
    assert_select "a[href=?]", policy_aup_path
    assert_select "a[href=?]", new_user_registration_path
    assert_select "a[href=?]", new_user_session_path

    get policy_privacy_path
    assert_template 'policy/privacy'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", policy_promise_path
    assert_select "a[href=?]", policy_aup_path
    assert_select "a[href=?]", new_user_registration_path
    assert_select "a[href=?]", new_user_session_path

    get policy_aup_path
    assert_template 'policy/acceptable'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", policy_promise_path
    assert_select "a[href=?]", policy_privacy_path
    assert_select "a[href=?]", new_user_registration_path
    assert_select "a[href=?]", new_user_session_path


  end

end

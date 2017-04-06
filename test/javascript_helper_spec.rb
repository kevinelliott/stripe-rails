require 'minitest/autorun'
require 'spec_helper'

class Stripe::JavascriptHelperTest < ActionView::TestCase
  def setup
    Rails.application.config.stripe.publishable_key = 'pub_xxxx'
  end

  test "should default to v1 if no options are passed" do
    assert_includes stripe_javascript_tag, 'https://js.stripe.com/v1/'
  end

  test "should render v3 if v3 option is passed" do
    assert_includes stripe_javascript_tag(:v3), 'https://js.stripe.com/v3/'
  end
end
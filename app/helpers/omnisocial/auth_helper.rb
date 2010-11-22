module Omnisocial
  module AuthHelper
    def auth_request_path(options = {})
      "/auth/#{options[:service]}"
    end
    
    def big_twitter_login_button
      content_tag(:a, content_tag(:span, 'Sign in with Twitter'), :class => 'omnisocial-button twitter', :href => auth_request_path(:service => 'twitter'))
    end

    def big_github_login_button
      content_tag(:a, content_tag(:span, 'Sign in with Github'), :class => 'omnisocial-button github', :href => auth_request_path(:service => 'github'))
    end
  
    def big_facebook_login_button
      content_tag(:a, content_tag(:span, 'Sign in with Facebook'), :class => 'omnisocial-button facebook', :href => auth_request_path(:service => 'facebook'))
    end
    
    def twitter_login_button
      content_tag(:a, content_tag(:img, :src => '/images/omnisocial/signin_twitter.png', :alt => 'Sign in with Twitter'), :href => auth_request_path(:service => 'twitter'))
    end
    
    def facebook_login_button
      content_tag(:a, content_tag(:img, :src => '/images/omnisocial/signin_facebook.png', :alt => 'Sign in with Facebook'), :href => auth_request_path(:service => 'facebook'))
    end

    def github_login_button
      content_tag(:a, content_tag(:img, :src => '/images/omnisocial/signin_github.png', :alt => 'Sign in with Github'), :href => auth_request_path(:service => 'github'))
    end
  end
end

# config/application.rb
module MyApp
  class Application < Rails::Application
    config.load_defaults 6.1
    # This is set in apps generated with the --api flag, and removes session/cookie middleware
    config.api_only = true

    # Must add these lines!
    # Adding back cookies and session middleware
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore

    # Use SameSite=Strict for all cookies to help protect against CSRF
    config.action_dispatch.cookies_same_site_protection = :strict
  end
end
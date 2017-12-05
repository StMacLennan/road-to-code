# Road to Code

Learning to code is hard enough, why struggle alone?

Each week, pair with a new partner, build that week's challenge website, then vote on the winner!

## Technology used
- **Ruby version**: Ruby 2.4.2
- **Framework**: Rails 5.1.4
- **Database**: Postgres
- **Webserver**: Puma
- **Testing**: Minitest, SimpleCov, Selenium, Capybara, SimpleCov (For test coverage)
- **Debugging**: Pry
- **Authentication**: Devise
- **Authorization**: Pundit
- **Front-end**: Vue + Webpack + Turbolinks (setup to play nicely)
- **Javascript**: Excludes coffeescript in favor of plain Javascript
- **SCSS and styling framework**: Bulma is used along with SCSS. While the styles do affect vue components, SCSS variables are not available to the vue components.
- **Development Environment**: Docker and docker-compose
- **SEO and analytics**: Build in support for quick SEO metadata and drop in compatability with google tag manager
- **Workers and PubSub**: Sidekiq and Redis

## Testing
A few notes on the testing environment
- I prefer Minitest over RSpec
- I also favour fixtures for testing consistency
- I have included a Pages controller, with a controller test as default
- I have also included a nonsense User system test to ensure that system tests work


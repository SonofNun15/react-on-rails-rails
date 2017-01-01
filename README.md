## react-rails-browserify-es6 branch

In this branch, we are using the `react-rails` gem. In addition, we are using the `browserify-rails` gem to bundle the resolve the dependency tree in our JavaScript files, allowing imports. Configured browserify to [transpile ES6 code using `babelify`](https://github.com/SonofNun15/react-on-rails/blob/react-rails-browserify/config/application.rb#L14).

## react-on-rails
A vanilla Ruby on Rails application for tracking vehicle mileage

Runs great on Ruby 2.2.2

To run, execute:
```
bundle
bundle exec rake db:setup
npm install
bundle exec rails s
```

Then point a browser to `localhost:3000`

There are no tests associated with this application as it was built quickly for demonstration purposes. All production code should be covered by tests to prevent regression, but failures in application have little to no cost.

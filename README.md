# Tunefind

A simple ruby wrapper for [TuneFind REST API V1](http://www.tunefind.com/api)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tunefind'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tunefind

## Usage

Set you API username and password as ENV vars:

```ruby
ENV['TUNEFIND_USERNAME'] = 'your-api-username'
ENV['TUNEFIND_PASSWORD'] = 'your-api-password'
```

### Show:

All shows

```ruby
Tunefind::Show.search
```

A single show

```ruby
Tunefind::Show.find('alias')
```

### Season:

```ruby
Tunefind::Season.find('alias', 1)
```

### Episode:

```ruby
Tunefind::Episode.find('alias', 1, 286)
```

### Movie:

All movies

```ruby
Tunefind::Movie.search
```

A single movie

```ruby
Tunefind::Movie.find('zombieland-2009')
```

### Artist:

All artists

```ruby
Tunefind::Artist.search
```

A single artist

```ruby
Tunefind::Artist.find('amazing-baby')
```

### Pagination

Search methods return a maximum of 1000 resources at a time. To page through results, specify a positive zero-indexed integer offset:

```ruby
Tunefind::Artist.search(offset: 1000)
```

### Filtering

Search methods support an optional "updated" parameter. When provided, only results updated after this date will be listed. The date format is [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601).

```ruby
Tunefind::Artist.search(updated: '2010-01-01T00%3A00%3A00%2B00%3A00')
```

**Disclaimer: By the time of this implementation, filtering was not working.**

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tunefind.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


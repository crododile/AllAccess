# AllAccess

This gem writes attr accessors for all instance variables set in your class's initializer.
Blog post [here](http://crododile.github.io/bloog/ruby/gems/object-oriented-programming/2015/06/27/all_access_gem.html)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'all_access'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install all_access

## Usage

# AllAccess
don't write attr_accessor

You have a class that is really just a bag of data, and I wanted to access the attributes with dot notation a'la javascript

Yes this is unnecessary

Usage:
```Ruby
class Accessible
  include AllAccess

  def initialize
    @test = "testy"
  end
end

accessible = Accessible.new
accessible.test # "testy"
accessible.test = "bacon"
accessible.test # "bacon"
```

NB. only works on attributes initialized in initializer
## Contributing

1. Fork it ( https://github.com/[my-github-username]/all_access/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

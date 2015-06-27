# AllAccess

TODO: Write a gem description

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

## Contributing

1. Fork it ( https://github.com/[my-github-username]/all_access/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

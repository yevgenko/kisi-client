# Kisi::Client

Ruby Client for the KISI (Access Control System) API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kisi-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kisi-client

## Usage

    kisi = Kisi::Client.new "KISI_TOKEN" # initialize kisi client
    doors = kisi.get_doors # the list of doors as per kisi response
    doors[0]['name'] # name/description of the first door in the list
    kisi.open_door(doors[0]) # open the first door

## Where is my KISI Token?

You should have one in your inbox for each organisation you have access to.
It is an alpha numeric key at the end of the URL your recieved from KISI, for example:

![](https://www.evernote.com/shard/s261/sh/a3c3b4f3-bcee-435b-9179-cd3712ab66cc/61bde2304631a75a/res/7bd877ac-b642-4f0f-8e1b-968179fad22d/skitch.png?resizeSmall&width=832)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yevgenko/kisi-client.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


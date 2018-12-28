# Boilerpipe

I saw other gems wrapping boilerpipe but they seemed to be outdated, hit the free api or I couldn't get them to work because of dependency issues. I went directly to the [original author's source](https://github.com/kohlschutter/boilerpipe) and forked that code base [here](https://github.com/gregors/boilerpipe). I made one notible change that is to add a user agent so article extractor wouldn't return a 403 for a variety of web servers. I compiled all dependencies into the jar using the maven-assembly-plugin using Java 8.

Also check out my pure ruby implementation [boilerpipe-ruby](https://github.com/gregors/boilerpipe-ruby)

Extractors added so far:

* ArticleExtractor
* ArticleSentencesExtractor
* DefaultExtractor
* LargestContentExtractor


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jruby-boilerpipe', require: 'boilerpipe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jruby-boilerpipe

## Usage

#### You can feed Boilerpipe:ArticleExractor either a valid url or html content.

    jruby-9.1.7.0 :001 >  require 'boilerpipe'
    => true
    jruby-9.1.7.0 :003 > Boilerpipe::ArticleExtractor.text("https://github.com/jruby/jruby/wiki/AboutJRuby")
    => "Clone this wiki locally\nAbout JRuby\nJRuby is a 100% Java implementation of the Ruby programming language. It is Ruby for the JVM.\nJRuby provides a complete set of core \"builtin\" classes and syntax for the Ruby language, as well as most of the Ruby Standard Libraries. The standard libraries are mostly Ruby's own complement of .rb files, but a few that depend on C language-based extensions have been reimplemented. Some are still missing, but we hope to implement as many as is feasible.\nSee Differences Between MRI And JRuby for more information on potential incompatibilities between JRuby and the C implementation of Ruby.\nDevelopment Team\nJRuby's current core development team consists of nine developers:\nCharles Oliver Nutter (Red Hat) aka headius\nThomas Enebo (Red Hat) aka enebo\nNick Sieger (LivingSocial)\nThere are also many past contributors who still help out from time to time:\nOla Bini (Thoughtworks)\nMany more...check out the JRuby commit logs!\nLinks\n"

     jruby-9.1.7.0 :002 > require 'open-uri'
    => true
    jruby-9.1.7.0 :004 > contents = open("https://github.com/jruby/jruby/wiki/AboutJRuby").read
    jruby-9.1.7.0 :005 > Boilerpipe::ArticleExtractor.text(contents)
    => "Clone this wiki locally\nAbout JRuby\nJRuby is a 100% Java implementation of the Ruby programming language. It is Ruby for the JVM.\nJRuby provides a complete set of core \"builtin\" classes and syntax for the Ruby language, as well as most of the Ruby Standard Libraries. The standard libraries are mostly Ruby's own complement of .rb files, but a few that depend on C language-based extensions have been reimplemented. Some are still missing, but we hope to implement as many as is feasible.\nSee Differences Between MRI And JRuby for more information on potential incompatibilities between JRuby and the C implementation of Ruby.\nDevelopment Team\nJRuby's current core development team consists of nine developers:\nCharles Oliver Nutter (Red Hat) aka headius\nThomas Enebo (Red Hat) aka enebo\nNick Sieger (LivingSocial)\nThere are also many past contributors who still help out from time to time:\nOla Bini (Thoughtworks)\nMany more...check out the JRuby commit logs!\nLinks\n"

#### Or using a different extractor

    jruby-9.2.5.0 :001 >  require 'boilerpipe'
    => true
    jruby-9.2.5.0 :003 > ::Boilerpipe::ArticleSentencesExtractor.text('https://github.com/jruby/jruby/wiki/AboutJRuby')
     => "JRuby is a 100% Java implementation of the Ruby programming language. It is Ruby for the JVM.\nJRuby provides a complete set of core \"builtin\" classes and syntax for the Ruby language, as well as most of the Ruby Standard Libraries. The standard libraries..."
    
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gregors/boilerpipe.


# haml-kramdown

This is a HAML filter for using Kramdown to render the inline Markdown texts.

## Usage

Actually you simply have to replace your `:markdown` filters with `:kramdown`:

Gemfile

    gem 'haml'
    gem 'kramdown'
    gem 'haml-kramdown'

foo.haml

    .content
      :kramdown
        # Markdown

        - foo
        - bar

That's it!

## Why?

There are only two established and pure Ruby Markdown engines: Maruku and
Kramdown. Although Maruku is widely used and stable it is not actively
maintained. At that time the current version 0.6.0 was published at May 4, 2009.

As some deprecation warnings arised for Maruku I was in need to find an
alternative and found Kramdown. Unfortunately there was no build-in Kramdown
support/filter in HAML ...

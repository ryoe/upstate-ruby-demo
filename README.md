# upstate-ruby-demo

Demo code used in my [Intro to ChatOps with Lita](https://ryoe.github.io/upstate-ruby-lita-talk/) talk at [Upstate Ruby](http://www.meetup.com/Upstate-Ruby/).

# Requirements
- Ruby 2.x
  - or JRuby 9.0.0.0+
  - or Rubinus 2+
- Redis 2.6+

# Quick Start
## Install Lita
`gem install lita`

## Install the demo code
```
git clone https://github.com/ryoe/upstate-ruby-demo.git
cd upstate-ruby-demo
bundle install
```

## Run it
Ensure redis running.
`redis-server`

Start lita
`
lita start
`

Lita help for available commands
`lita help`

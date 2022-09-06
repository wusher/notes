---
layout: post
title:  "Inline Bundler Without Gemfile"
date: 2022-09-01 01:01:01 -0700
published: true

tags: ruby
---

For quick throwaway ruby scripts, you can add your gemfile inline. When you run the file, ruby will install your dependencies and then execute the script. 

#### Inline bundler 

```ruby
# BEGIN inline bundler 
require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'

  gem 'httparty'
  gem 'pry'
end
# END inline bundler 

resp = HTTParty.get "https://rubygems.org"
binding.pry 
```

#### Running

```
> ruby tmp.rb 

From: /Users/user/code/tmp.rb:11 :

     6:   gem 'httparty'
     7:   gem 'pry'
     8: end
     9: 
    10: resp = HTTParty.get "https://rubygems.org"
 => 11: binding.pry 

[1] pry(main)> 
```
---
layout: post
title:  "Use A Git Branch In A Gemfile"
published: true
date: 2022-10-20 01:01:01 -0700

tags: ruby gemfile
---



Source: [https://bundler.io/guides/git.html](https://bundler.io/guides/git.html)


```ruby 
gem 'nokogiri', git: 'https://github.com/sparklemotion/nokogiri.git', branch: 'rack-1.5'
```
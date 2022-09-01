---
layout: post
title:  "Uninstall All Bundled Gems"
published: true
date: 2022-09-01 01:01:01 -0700
categories: til blog 
tags: ruby bundler
---

I came across a quick way to delete all the gems installed through bundler. [source](https://stackoverflow.com/a/21385516/1632)

```
bundle list | ruby -e 'ARGF.readlines[1..-1].each {|l| g = l.split(" ");  puts "Removing #{g[1]}"; `gem uninstall --force #{g[1]} -v #{g[2].gsub(/\(|\)/, "")}`; }'
```

#### Line by line version 

```
bundle list 
ruby -e '
  ARGF.readlines[1..-1].each {|l| g = l.split(" ")
  puts "Removing #{g[1]}"
  `gem uninstall --force #{g[1]} -v #{g[2].gsub(/\(|\)/, "")}`
}'
```


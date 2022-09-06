---
layout: post
title:  "Feature Flags On Rails Routes"
published: true
date: 2022-09-04 01:01:01 -0700

tags: rails flipper
---

Found a [tweet](https://twitter.com/julian_rubisch/status/1565244598204645376) explaining how to wrap a rails route with a feature flag. 




```ruby 
resources :media,
      constraints: ->(req) do
                     current_user = req.env["warden"].user(:user)
                     Flipper.enabled?(:media_uploads, current_user)
                   end
```

Source: [https://twitter.com/carbon_noreply/status/1565244390666252288](https://twitter.com/carbon_noreply/status/1565244390666252288)
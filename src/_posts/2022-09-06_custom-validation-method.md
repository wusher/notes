---
layout: post
title:  "Custom Validation Method"
published: true
date: 2022-09-06 01:01:01 -0700
tags: rails validation
---


Important: when using a custom validation method, use the method `validate` and not `validates` 

```ruby
validate :check_location_coordinates

def check_location_coordinates
  unless location_lat.present? && location_lng.present?
    errors.add(:location, "must have a location coordinates.")
  end
end
```

Found the solution in the rails guides: [https://guides.rubyonrails.org/active_record_validations.html#custom-validators](https://guides.rubyonrails.org/active_record_validations.html#custom-validators)
---
layout: post
title:  "File Uploads Without Form Helpers"
published: true
date: 2022-09-02 01:01:01 -0700
categories: til blog 
tags: rails
---

When uploading files without using the form helper `form.file_field`, you have to add the option `multipart: true` to the form tag. 

Discovered in [API Docs](https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-file_field_tag)

```erb 
  <%= form_with(model: @company), multipart: true) do |form| %>

    -- When using:  --
    <input type="file" name="company[logo]" />
    -- OR --
    <%= file_field_tag "company[logo]" %>

    <%= form.submit %>
  <% end %>
```



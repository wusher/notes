---
layout: post
title:  "Rails Creds"
published: true
date: 2022-12-08 01:01:01 -0700

tags: rails
---

## Editing rails credentials 


```sh
bin/rails credentials:edit --environment development
bin/rails credentials:edit --environment production
```

```yaml

yaml: 
  secret_key: SEKRET
  secret_id: SHHHHHH
```

## Using rails credentials 


```ruby
Rails.application.credentials.yaml.secret_key
```
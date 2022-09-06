---
layout: post
title:  "Signout Users"
date: 2022-09-01 01:01:01 -0700

tags: rails devise
---



Code to logout deactivated users: 

```ruby 
if current_user&.deactivated_at
  email = current_user.email
  sign_out current_user
  redirect_to root_path, alert: "Your account has been deactivated. Account: #{email} "
end
```
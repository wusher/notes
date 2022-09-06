---
layout: post
title:  "Active Storage Variants Failing Locally"
published: true
date: 2022-09-02 02:01:01 -0700

tags: rails puma
---


#### Setup

* ruby 3.0.4p208  
* puma 5.6.1
* Rails 7.0.2
* macos 12.4 m1 



#### Issue 

I kept getting broken images when generating variants locally. I found the error below in my rails logs. 


#### Error 

```
[__NSCFConstantString initialize] may have been in progress in another thread when fork() was called
[__NSCFConstantString initialize] may have been in progress in another thread when fork() was called
```

#### Fix 

I had to add this to my `zshrc` before I initialize `rbenv` 

```
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
```
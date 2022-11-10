---
layout: post
title:  "Checkout An Old Version In A New File"
published: true
date: 2022-11-10 01:01:01 -0700

tags: git
---

Checkout an older version of a file into a new file. 


```bash 

#git show SHA:CURRENT_PATH > OUTPUT_PATH 

>git show 61f4148:app/views/current.html.erb > app/views/old_version.html.erb

```


[Source](https://stackoverflow.com/a/890308/1632)
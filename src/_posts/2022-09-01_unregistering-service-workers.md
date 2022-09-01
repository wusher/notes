---
layout: post
title:  "Unregister Service Workers"
date: 2022-09-01 01:01:01 -0700
categories: til blog 
tags: pwa js
---


A little bit of code to unregister all service workers: 


```javascript
if (navigator.serviceWorker) {
  navigator.serviceWorker.getRegistrations().then(function (registrations) {
    for (let registration of registrations) {
      registration.unregister();
    }
  });
}

```
---
layout: page
title: Posts
---

<ul>
  <% collections.posts.resources.each do |post| %>
    <li>
      <a href="<%= post.relative_url %>"
          class="p-2 text-center w-full block"
      >
        <span class="font-bold px-4">
        <%= "04/01/22" %>
        </span>
        <span>
        <%= post.data.title %>
        </span>
      </a>
    </li>
  <% end %>
</ul>

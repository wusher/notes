---
layout: page
title: Posts
---

<ul class="max-w-lg mx-auto">
  <% collections.posts.resources.each do |post| %>
    <li class="hover:bg-slate-100 " >
      <a href="<%= post.relative_url %>"
          class="p-2 flex text-center w-full  block"
      >
        <span class="font-bold pr-4">
          <%= post.data.date.strftime("%Y-%m-%d") %>
        </span>
        <span class="grow text-left">
        <%= post.data.title %>
        </span>
        <div class="text-center justify-center hidden sm:block">
          <% post.data.tags.each do |tag| %>
            <span class="tag_badge">
            <%= tag %>
            </span>
          <% end  %>
        </div>
      </a>
    </li>
  <% end %>
</ul>

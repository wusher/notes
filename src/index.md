---
layout: page
title: Posts
---

<ul class="max-w-lg mx-auto text-slate-800 ">
  <% collections.posts.resources.sort_by(&:date).select{|x| !x.data.categories.include?("cheatsheet") }.reverse.each_with_index do |post, idx| %>
    <li class="hover:bg-slate-100 <%= idx == 0 ? 'bg-yellow-100 rounded-xl' : '' %> " >
      <a href="<%= post.relative_url %>"
          class="p-2 flex text-center w-full  block"
      >
        <% if idx == 0 %>
          <span class="tag_badge mr-1">New</span>
        <% end %>
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


# explore-hotrails

> This repo is practice for https://www.hotrails.dev/ tutorial


```erb
<%= form_with model: quote, html: { class: "quote form" } do |f| %>
  <% if quote.errors.any? %>
    <div class="error-message">
      <%= quote.errors.full_messages.to_sentence.capitalize %>
    </div>
  <% end %>

  <div class="form-group">
    <%= f.label :name %>
    <%= f.text_field :name, autofocus: true, class: "form-control" %>
  </div>
  
  <%= f.submit class: "btn btn--secondary" %>
<% end %>
```

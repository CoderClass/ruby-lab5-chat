# README

## Required features


### Milestone 1

- [x] Set up a lab5 project using PostgreSQL.Git init, git commit and git push.
- [x] Generate a `Message` resource with a `body` string column. Add validation. Implement `/messages` to display all messages (newest first).
- [x] Set up root path to `HomeController#index`. Inside it, redirect visitors to `messages_path`.
- [x] On `/messages`, refactor the view to use `render @messages` and implement `_message.html.erb` partial. Your generated HTML should look like this:

```erb
<div class="messages">
  <div id="message_1" class="message">How are you?</div>
  <div id="message_2" class="message">I'm fine, thanks. You?</div>
  <div id="message_3" class="message">Great! I love coding.</div>
</div>
```

### Milestone 2

- [x] Implement `flash_messages` helper in ApplicationHelper and display `<%= flash_messages %>` before `<%= yield %>` in application layout.
- [x] Implement a new message form (`form_for Message.new`) before `<div class="messages">...</div>`. Make sure `Messages#create` work as expected.

## Optional features

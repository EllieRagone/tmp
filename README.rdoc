This is an example application demonstrating some problems with hstore in Rails.

After opening a console, create a User record with some arbitrary data.  Next,
load that user record (e.g., `user = User.first`).  Lastly, set a new key on 
`flags` (the hstore column) to some value: `user.flags['foo'] = 'bar'`.  And the
problems start here: first, attempt to see if anything changed: `user.changed?`
and you will get: `false`.  That's strange.  And if you look specifically at
flags: `user.flags_changed?` you also get `false`.

Obviously, this is a significant problem and has made hstore completely useless
to me without significant hacking around it.  It would be great if this issue
could be resolved.
